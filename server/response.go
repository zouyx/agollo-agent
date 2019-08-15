package server

import (
	"encoding/json"
	"net/http"
)

const (
	SUCCESS=iota
	UNKNOWN
	KEY_NOT_NULL
)

var RESPONSE_MESSAGES map[int]string

func init() {
	RESPONSE_MESSAGES=make(map[int]string,0)
	RESPONSE_MESSAGES[SUCCESS]="Success"
	RESPONSE_MESSAGES[UNKNOWN]="Fail, Unknown"
	RESPONSE_MESSAGES[KEY_NOT_NULL]="Fail, key can not be null"
}

type Response struct {
	Code int
	Message string
	Data interface{}
}

func getMessage(code int) string {
	return RESPONSE_MESSAGES[code]
}

func Success(d interface{},rw http.ResponseWriter)  {
	if d==nil{
		return
	}

	r:=&Response{
		Code:SUCCESS,
		Message:getMessage(SUCCESS),
		Data:d,
	}
	write(r,rw)
}

func Fail(code int,rw http.ResponseWriter)  {
	message := getMessage(code)
	r:=&Response{
		Code:    UNKNOWN,
		Message: getMessage(UNKNOWN),
	}
	if message==""{
		write(r,rw)
		return
	}

	r=&Response{
		Code:    code,
		Message: getMessage(code),
	}
	write(r,rw)
}

func write(r interface{},rw http.ResponseWriter)  {
	bytes, _ := json.Marshal(r)
	rw.Write(bytes)
}
