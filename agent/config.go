package agent

import (
	"github.com/zouyx/agollo"
	"github.com/zouyx/agollo-agent/server"
	"net/http"
)

func GetConfig(rw http.ResponseWriter,req *http.Request) {
	key := req.URL.Query().Get("key")
	defaultValue := req.URL.Query().Get("defaultValue")
	if key=="" {
		server.Fail(server.KEY_NOT_NULL,rw)
		return
	}

	v:=agollo.GetStringValue(key,defaultValue)

	server.Success(v,rw)
}
