Now we have a look at how to use Go with containers. First, we will create a containerized version of a simple HTTP ping service in `$G4OHOME/code/containers` in two ways and then deploy it to Kubernetes.

`cd $G4OHOME/code/containers`{{execute}}  

Build the container image and launch the container using the full-blown approach:

`docker build --tag=quay.io/mhausenblas/pingsvc:1 --file=fbDockerfile .`{{execute}}
`docker run --rm --name fbping -d -p 8888:8888 quay.io/mhausenblas/pingsvc:1`{{execute}}

Call it:

`curl localhost:8888/ping`{{execute}}

Clean up:

`docker kill fbping`{{execute}}

Now using the the light-weight approach. First, build and run it:

`GOOS=linux GOARCH=amd64 go build`{execute}}
`docker build --tag=quay.io/mhausenblas/pingsvc:2 --file=lwDockerfile .`{{execute}}
`docker run --rm --name lwping -d -p 8888:8888 quay.io/mhausenblas/pingsvc:2`{{execute}}

Call it:

`curl localhost:8888/ping`{{execute}}

Clean up:

`docker kill lwping`{{execute}}

Compare resulting images:

`docker images "mhausenblas/pingsvc*"`{{execute}}

Now launch it in Kubernetes:

`kubectl run pingsvc --image=quay.io/mhausenblas/pingsvc:2 --port=8888`{{execute}}
`kubectl expose deploy/pingsvc`{{execute}}
`kubectl get deploy,po,svc`{{execute}}

Call it:

`kubectl run -i -t --rm jumpod --restart=Never \
                      --image=quay.io/mhausenblas/jump:0.2 curl pingsvc:8888/ping`{{execute}}