package main

import (
	"bytes"
	"context"
	"flag"
	"fmt"

	"github.com/mloncode/uast2pl"

	bblfsh "github.com/bblfsh/go-client/v4"
)

func main() {
	flag.Parse()

	client, err := bblfsh.NewClientContext(context.Background(), "localhost:9432")
	if err != nil {
		panic(err)
	}
	defer client.Close()

	req := client.NewParseRequest()
	req = req.ReadFile(flag.Arg(0))
	n, _, err := req.UAST()
	if err != nil {
		panic(err)
	}

	buf := new(bytes.Buffer)
	err = uast2pl.WriteNode(buf, n)
	if err != nil {
		panic(err)
	}

	fmt.Println(buf.String())
}
