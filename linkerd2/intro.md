<div style="border-bottom: 1px solid #0a0a0a; padding: 20px;">
 <img src="https://raw.githubusercontent.com/cncf/artwork/master/linkerd/horizontal/color/linkerd-horizontal-color.png" width="40%" />
 </div>

Linkerd2 has two basic components:

- a *data plane* comprised of lightweight proxies, which are deployed as sidecar containers alongside your service code
- a *control plane* of processes that coordinate and manage these proxies.

![Linkerd2 control plane: dashboard](img/control-plane.png)

Humans interact with the Linkerd2 service mesh via the `linkerd` command-line interface (CLI) or a web app that you use to control the cluster.

In this guide we will walk you through how to deploy Linkerd2 on your Kubernetes cluster and how to set up a sample gRPC application.
