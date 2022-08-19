package main

import (
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/-/ready", func(res http.ResponseWriter, req *http.Request) {
		res.Header().Add("Content-Type", "text/plain")
		res.WriteHeader(http.StatusOK)
		if _, err := res.Write([]byte("Ready.")); err != nil {
			log.Printf("ready write error: %s\n", err)
		}
	})

	http.HandleFunc("/-/healthy", func(res http.ResponseWriter, req *http.Request) {
		res.Header().Add("Content-Type", "text/plain")
		res.WriteHeader(http.StatusOK)
		if _, err := res.Write([]byte("Healthy.")); err != nil {
			log.Printf("healthy write error: %s\n", err)
		}
	})

	http.HandleFunc("/hello", hello)

	log.Fatal(http.ListenAndServe(":8080", nil))
}
