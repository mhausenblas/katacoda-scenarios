Now we shell out, that is execute `ps -f` using `exec.Command()`, and print the result:

`go run $G4OHOME/code/shell-out/main.go`{{execute}}

Testing is also super easy and part of the Go tool chain:

`cd $G4OHOME/code/testing/`
`go test -v`