package main

import (
	"log"

	"github.com/bhuvanmm/go-micro/db"
)

func main() {
	db, err := db.NewDatabase()
	if err != nil {
		log.Fatalf("error opening database connection: %v", err)
	}
	defer db.Close()
	log.Println("successfully connected to database!")
}
