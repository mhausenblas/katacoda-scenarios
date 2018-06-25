Now we have a look at how to pass arguments to a program:

`go run $G4OHOME/code/cli/main.go`{{execute}}
`go run $G4OHOME/code/cli/main.go -h{{execute}}
`go run $G4OHOME/code/cli/main.go--target=Dan{{execute}}
`go run $G4OHOME/code/cli/main.go--target=Dan --repeat=2{{execute}}

Note that the [github.com/spf13/cobra](https://github.com/spf13/cobra) package can be used as a drop-in replacement and offers a lot more flexibility.