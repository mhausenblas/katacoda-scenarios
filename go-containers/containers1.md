Now let's deploy our `pingsvc` in Kubernetes.

First, create a deployment using:

`kubectl run pingsvc --image=quay.io/mhausenblas/pingsvc:2 --port=8888`{{execute}}

Now, create a service by exposing the deployment so that it is available cluster-internally via `pingsvc:8888`:

`kubectl expose deploy/pingsvc`{{execute}}

List all the resources we've created:

`kubectl get deploy,po,svc`{{execute}}

Wait until the pod the deployment created (something like `pingsvc-58fc565c9c-h5znn`) shows `Running` in the `STATUS` column and then
call `pingsvc` using a jump pod like so:

`kubectl run -i -t --rm jumpod --restart=Never --image=quay.io/mhausenblas/jump:0.2 curl pingsvc:8888/ping`{{execute}}

That's it!