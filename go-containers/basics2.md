Go supports modules and they are called `packages`, here we define and use `github.com/mhausenblas/go4ops/code/modules/something`:

`go run $G4OHOME/code/modules/main.go`{{execute}}

Next we move on to some basic I/O, let's start with reading user input from `stdin`:

`go run $G4OHOME/code/userin/main.go`{{execute}}

How about reading a file? Here we go, we read `../data/simple.txt` all at once an print the content:

`go run $G4OHOME/code/files-reading/main.go`{{execute}}

Now, let's write to `../data/out.txt`:

`go run $G4OHOME/code/files-writing/main.go`{{execute}}