package main

import (
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/ready", func(res http.ResponseWriter, req *http.Request) {
		res.WriteHeader(http.StatusOK)
		res.Header().Add("Content-Type", "text/plain")
		_, _ = res.Write([]byte("Ready."))
	})

	http.HandleFunc("/healthy", func(res http.ResponseWriter, req *http.Request) {
		res.WriteHeader(http.StatusOK)
		res.Header().Add("Content-Type", "text/plain")
		_, _ = res.Write([]byte("Healthy."))
	})

	http.HandleFunc("/hello", hello)

	log.Fatal(http.ListenAndServe(":8080", nil))
}
