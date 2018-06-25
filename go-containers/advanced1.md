Now we have a look at a service with an HTTP API. On the endpoint `/metrics` it serves a JSON payload with some system metrics using the `github.com/shirou/gopsutil` package to gather those metrics, so let's first install the dependencies:

`go get github.com/shirou/gopsutil && go get golang.org/x/sys/unix`{{execute}}

Now we can execute the service in the background: 

`cd $G4OHOME/code/metricsrv/`{{execute}}
`go run main.go &`{{execute}}

And we can query it like so:

`curl localhost:9876/metrics`{{execute}}