package main

import (
	"context"
	"flag"
	"io"
	"os"
	"strings"

	bblfsh "github.com/bblfsh/go-client/v4"

	"github.com/mloncode/uast2pl/pkg/uast2pl"
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
	host   string
	output string
)

func init() {
	flag.Var(&files, "f", "list of input source files")
	flag.StringVar(&host, "s", "localhost:9432", "address:port of babelfish server")
	flag.StringVar(&output, "o", "", "output file (by default stdio)")
}

func main() {
	flag.Parse()
	if len(files) == 0 {
		flag.Usage()
		os.Exit(1)
	}

	client, err := bblfsh.NewClientContext(context.Background(), host)
	if err != nil {
		panic(err)
	}
	defer client.Close()

	nodes := make([]bblfsh.Node, len(files))
	for i, f := range files {
		req := client.NewParseRequest()
		req = req.ReadFile(f)
		n, _, err := req.UAST()
		if err != nil {
			panic(err)
		}
		nodes[i] = n
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

	if err = uast2pl.WriteNode(w, nodes...); err != nil {
		panic(err)
	}
}
