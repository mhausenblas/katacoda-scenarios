Next we move on to dependency management with `dep`. So first we need to install it:

`go get -u github.com/golang/dep/cmd/dep`{{execute}}

Now we can use `dep` to resolve the dependencies stated in `$G4OHOME/code/dependency/Gopkg.toml`:

`cd $G4OHOME/code/dependency/`{{execute}}
`$GOPATH/bin/dep ensure`{{execute}}

If you now look into `$G4OHOME/code/dependency/vendor` you'll find the `github.com/Sirupsen/logrus` package in version `1.0.3` there. Now we can execute the program using this version:

`go run main.go`{{execute}}