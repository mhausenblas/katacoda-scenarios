Let's start off with the obligatory Hello World program:

`go run $G4OHOME/code/hello-world/main.go`{{execute}}

Now let's move on to a more realistic Hello World program that uses the environment variable `G4O_LANG` to customize the response:

`go run $G4OHOME/code/hello-world-for-real/main.go`{{execute}}
`G4O_LANG=nl go run $G4OHOME/code/hello-world-for-real/main.go`{{execute}}

Compare the output with and without the environment variable `G4O_LANG` set.