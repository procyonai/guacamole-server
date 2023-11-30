package main

import (
	"net/http"
	"os/exec"
)

func encode(w http.ResponseWriter, req *http.Request) {
	recordingPath := req.FormValue("path")
	cmd := exec.Command("/bin/sh", "-c", "/opt/guacamole/bin/guacenc -s 1280x720 -r 20000000 -f "+recordingPath)
	err := cmd.Run()
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
	}
}

func main() {
	http.HandleFunc("/encode", encode)
	http.ListenAndServe(":8123", nil)
}
