package main

import (
	"fmt"
	"log"
	"net/http"
)

func hello(res http.ResponseWriter, req *http.Request) {
	res.WriteHeader(http.StatusOK)
	res.Header().Add("Content-Type", "text/plain")
	if _, err := fmt.Fprintf(res, "Hello!"); err != nil {
		log.Printf("response write error: %s\n", err)
	}
}
