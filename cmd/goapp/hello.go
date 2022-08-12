package main

import (
	"fmt"
	"net/http"
)

func Hello(res http.ResponseWriter, req *http.Request) {
	res.Header().Add("Content-Type", "text/plain")
	fmt.Fprintf(res, "Hello!\n")
}
