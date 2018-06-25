Now we move on to some slightly more advanced topics. First, we read the file `$GO4HOME/data/project.json` and deserialize the JSON into a struct which we then print without and with the fields:

`cd $G4OHOME/code/files-advanced/ && go run main.go`{{execute}}

Next we have some fun with the `time` package:

`go run $G4OHOME/code/time/main.go`{{execute}}

How about some concurrent programming using go routines and channels?

`go run $G4OHOME/code/concurrency/main.go`{{execute}}
