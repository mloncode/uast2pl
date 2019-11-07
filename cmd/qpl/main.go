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

const (

	// :- use_module(library(lists)).
	lists = `
		append([], L, L).
		append([H|T], L, [H|R]) :- append(T, L, R).

		flatten(List, FlatList) :- flatten(List, [], FlatList0), !, FlatList=FlatList0.

		flatten(Var, Tl, [Var|Tl]) :- var(Var), !.
		flatten([], Tl, Tl) :- !.
		flatten([Hd|Tl], Tail, List) :- !, flatten(Hd, FlatHeadTail, List), flatten(Tl, Tail, FlatHeadTail).
		flatten(NonList, Tl, [NonList|Tl]).

		reverse(Xs, Ys) :- reverse(Xs, [], Ys, Ys).
		reverse([], Ys, Ys, []).
		reverse([X|Xs], Rs, Ys, [_|Bound]) :- reverse(Xs, [X|Rs], Ys, Bound).
	`
)

var (
	files  stringList
	query  string
	output string

	wam prolog.Machine
)

func init() {
	flag.Var(&files, "f", "list of input prolog files")
	flag.StringVar(&query, "q", "", "prolog query")
	flag.StringVar(&output, "o", "", "output file (by default stdio)")

	stdlib := strings.Join([]string{
		lists,
	}, "\n\n")
	wam = prolog.NewMachine().Consult(stdlib)
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

	err := consult(files)
	if err != nil {
		panic(err)
	}

	vars, err := variables(query)
	if err != nil {
		panic(err)
	}

	err = proveAll(query, vars, func(v string, t term.Term) {
		io.WriteString(w, fmt.Sprintf("%s = %s\n", v, t))
	})
	if err != nil {
		panic(err)
	}
	io.WriteString(w, "\n")
}

func consult(src []string) error {
	for _, name := range src {
		f, err := os.Open(name)
		if err != nil {
			return err
		}

		wam = wam.Consult(f)

		if err = f.Close(); err != nil {
			log.Println(err)
		}
	}
	return nil
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

func proveAll(q string, vars []string, call func(v string, t term.Term)) error {
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
