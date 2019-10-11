package main

import (
	"context"
	"flag"
	"io"
	"os"

	bblfsh "github.com/bblfsh/go-client/v4"
	"github.com/mloncode/uast2pl"
)

var (
	input  string
	host   string
	output string
)

func init() {
	flag.StringVar(&input, "f", "", "input file to parse")
	flag.StringVar(&host, "s", "localhost:9432", "address:port of babelfish server")
	flag.StringVar(&output, "o", "", "output file (by default stdio)")
}

func main() {
	flag.Parse()
	if input == "" {
		flag.Usage()
		os.Exit(1)
	}

	client, err := bblfsh.NewClientContext(context.Background(), host)
	if err != nil {
		panic(err)
	}
	defer client.Close()

	req := client.NewParseRequest()
	req = req.ReadFile(input)
	n, _, err := req.UAST()
	if err != nil {
		panic(err)
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

	if err = uast2pl.WriteNode(w, n); err != nil {
		panic(err)
	}
}
