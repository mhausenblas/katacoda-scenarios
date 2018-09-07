<img align="left" src="https://raw.githubusercontent.com/cncf/artwork/master/linkerd/horizontal/color/linkerd-horizontal-color.png" />

Linkerd2 has two basic components: a data plane comprised of lightweight proxies, which are deployed as sidecar containers alongside your service code, and a control plane of processes that coordinate and manage these proxies. Humans interact with the service mesh via a command-line interface (CLI) or a web app that you use to control the cluster.

In this guide, we’ll walk you through how to deploy Linkerd2 on your Kubernetes cluster, and how to set up a sample gRPC application.

Afterwards, check out the [Using Linkerd2 to debug a service](https://linkerd.io/2/debugging-an-app/) page, where we’ll walk you through how to use Linkerd2 to investigate poorly performing services.
