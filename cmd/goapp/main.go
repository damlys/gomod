package main

import (
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/-/ready", func(res http.ResponseWriter, req *http.Request) {
		res.Header().Add("Content-Type", "text/plain")
		res.WriteHeader(http.StatusOK)
		res.Write([]byte("Ready."))
	})

	http.HandleFunc("/-/healthy", func(res http.ResponseWriter, req *http.Request) {
		res.Header().Add("Content-Type", "text/plain")
		res.WriteHeader(http.StatusOK)
		res.Write([]byte("Healthy."))
	})

	http.HandleFunc("/hello", Hello)

	log.Fatal(http.ListenAndServe(":8080", nil))
}
