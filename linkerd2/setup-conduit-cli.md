As this is your first time running Linkerd2, you’ll need to download the command-line interface (CLI) onto your machine. You’ll then use this CLI to install Linkerd2 on a Kubernetes cluster.

`curl https://run.linkerd.io/install | sh`{{execute}}

Next, add Linkerd2 to your path with:

`export PATH=$PATH:$HOME/.linkerd/bin`{{execute}}

Verify the CLI is installed and running correctly with:

`linkerd version`{{execute}}

With `Server version: unavailable`, don’t worry, we haven’t added the control plane… yet.
