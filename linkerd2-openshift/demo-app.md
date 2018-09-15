Finally, it’s time to install a demo application and add it to the service mesh.

Fetch the demo, add Linkerd2 to it and apply it to your cluster using the following commands:

`wget  https://raw.githubusercontent.com/runconduit/conduit-examples/master/emojivoto/emojivoto.yml`{{execute}}

`cat emojivoto.yml | linkerd inject - > linkerd-emojivoto.yml`{{execute}}

`cat linkerd-emojivoto.yml | kubectl apply -f -`{{execute}}

These commands download the Kubernetes config for an example gRPC application where users can vote for their favorite emoji, then runs the config through `linkerd inject`. The config has the Linkerd2 data plane proxies injected as sidecar containers in the demo's pods and `kubectl` takes care of applying this configuration to your cluster.

As with `linkerd install`, in this command, the Linkerd2 CLI is simply doing text transformations, with `kubectl` doing the heavy lifting of actually applying config to the Kubernetes cluster.

The pattern of injecting Linkerd2's configuration in this matter is convenient because you can introduce additional filters into the pipeline, or run the commands separately and inspect the output of each one.

Take a look at what's actually happening by running a diff on the before and after (hint: press `q` to exit the `git diff` view):

`git diff --no-index -- emojivoto.yml linkerd-emojivoto.yml`{{execute}}

At this point, you should have an application running on your Kubernetes cluster, and (unbeknownst to it!) also added to the Linkerd2 service mesh.
