package main

import (
	"flag"
	"fmt"
	"io"
	"log"
	"os"
	"strings"

	prolog "github.com/mndrix/golog"
	"github.com/mndrix/golog/read"
	"github.com/mndrix/golog/term"
)

type stringList []string

func (l *stringList) String() string {
	return strings.Join(*l, ",")
}

func (l *stringList) Set(value string) error {
	*l = append(*l, value)
	return nil
}

var (
	files  stringList
	query  string
	output string
)

func init() {
	flag.Var(&files, "f", "list of input prolog files")
	flag.StringVar(&query, "q", "", "prolog query")
	flag.StringVar(&output, "o", "", "output file (by default stdio)")
}

func main() {
	flag.Parse()
	if len(files) == 0 || query == "" {
		flag.Usage()
		os.Exit(1)
	}

	var w io.Writer = os.Stdout
	if output != "" {
		if f, err := os.Create(output); err != nil {
			panic(err)
		} else {
			defer f.Close()
			w = f
		}
	}

	wam, err := consult(files)
	if err != nil {
		panic(err)
	}

	vars, err := variables(query)
	if err != nil {
		panic(err)
	}

	err = proveAll(wam, query, vars, func(v string, t term.Term) {
		io.WriteString(w, fmt.Sprintf("%s = %s\n", v, t))
	})
	if err != nil {
		panic(err)
	}
	io.WriteString(w, "\n")
}

func consult(src []string) (prolog.Machine, error) {
	wam := prolog.NewMachine()

	for _, name := range src {
		f, err := os.Open(name)
		if err != nil {
			return nil, err
		}

		wam = wam.Consult(f)

		if err = f.Close(); err != nil {
			log.Println(err)
		}
	}
	return wam, nil
}

func variables(src string) ([]string, error) {
	tr, err := read.NewTermReader(src)
	if err != nil {
		return nil, err
	}

	var vars []string
	for {
		t, e := tr.Next()
		if e != nil {
			if e == read.NoMoreTerms {
				break
			}
			return nil, e
		}

		if goal, ok := t.(term.Callable); ok {
			vars = append(vars, term.Variables(goal).Keys()...)
		}
	}
	return vars, nil
}

func proveAll(wam prolog.Machine, q string, vars []string, call func(v string, t term.Term)) error {
	for _, s := range wam.ProveAll(q) {
		for _, v := range vars {
			if v == "_" {
				continue
			}

			t, err := s.ByName(v)
			if err != nil {
				return err
			}
			call(v, t)
		}
	}
	return nil
}
