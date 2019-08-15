package main

import (
	"github.com/zouyx/agollo"
	"github.com/zouyx/agollo-agent/agent"
	"net/http"
)

func main() {
	go agollo.Start()

	http.HandleFunc("/config",agent.GetConfig)

	http.ListenAndServe("0.0.0.0:9000",nil)
}

