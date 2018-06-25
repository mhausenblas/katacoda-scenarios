Now we have a look at how to use Go with containers. First, we will create a containerized version of a simple HTTP ping service in `$G4OHOME/code/containers` using two strategies.

`cd $G4OHOME/code/containers`{{execute}}  

Build the container image using the full-blown approach:

`docker build --tag=quay.io/mhausenblas/pingsvc:1 --file=fbDockerfile .`{{execute}}

Launch the container image we just built as a container named `fbping`:

`docker run --rm --name fbping -d -p 8888:8888 quay.io/mhausenblas/pingsvc:1`{{execute}}

Call it:

`curl localhost:8888/ping`{{execute}}

Clean up:

`docker kill fbping && clear`{{execute}}

Now, using the the light-weight approach. First, build the executable:

`GOOS=linux GOARCH=amd64 go build`{{execute}}

And now the container image:

`docker build --tag=quay.io/mhausenblas/pingsvc:2 --file=lwDockerfile .`{{execute}}

Launch the container image we just built as a container named `lwping`:

`docker run --rm --name lwping -d -p 8888:8888 quay.io/mhausenblas/pingsvc:2`{{execute}}

Call it:

`curl localhost:8888/ping`{{execute}}

Clean up:

`docker kill lwping && clear`{{execute}}

Compare the container images (note the resulting sizes!):

`docker images "quay.io/mhausenblas/*"`{{execute}}

If you have access to a container registry then you can now also push the container image. For example, using [Quay](https://quay.io/)), just replace `$USERNAME` with your username:

`docker push quay.io/$USERNAME/pingsvc:2`