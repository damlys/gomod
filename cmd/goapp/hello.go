package main

import (
	"fmt"
	"net/http"
)

func hello(res http.ResponseWriter, req *http.Request) {
	res.Header().Add("Content-Type", "text/plain")
	fmt.Fprintf(res, "Hello!\n")
}
