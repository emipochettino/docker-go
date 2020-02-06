package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/ping", func(writer http.ResponseWriter, request *http.Request) {
		fmt.Fprint(writer, "pong")
	})
	log.Println("Running...")
	log.Fatal(http.ListenAndServe(":3000", nil))
}
