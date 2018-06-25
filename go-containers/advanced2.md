Now we have a look at how to pass arguments to a program.

If no arguments are supplied:

`go run $G4OHOME/code/cli/main.go`{{execute}}

List all arguments:

`go run $G4OHOME/code/cli/main.go -h`{{execute}}

Use arguments:

`go run $G4OHOME/code/cli/main.go --target=Dan --repeat=2`{{execute}}

Note that the [github.com/spf13/cobra](https://github.com/spf13/cobra) package can be used as a drop-in replacement and offers a lot more flexibility.