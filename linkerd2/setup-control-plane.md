Now that you have the CLI running locally, it’s time to install the Linkerd2 control plane onto your Kubernetes cluster. Don’t worry if you already have things running on this cluster—the control plane will be installed in a separate `linkerd` namespace where it can easily be removed.

`linkerd install | kubectl apply -f -`{{execute}}

This generates a Kubernetes config, and pipes it to `kubectl`, which then applies the config to your Kubernetes cluster.

Let's wait until everything is up and running, which may take up to a minute. An easy way to do that is the following (hint: use `CTRL+C` to stop the `watch` command to updating you once you see all pods in the `Running` status):

`watch kubectl --namespace=linkerd get po -l linkerd.io/control-plane-ns=linkerd`{{execute}}

Once all the pods started are ready, it is possible to also view the Linkerd2 server's version:

`linkerd version`{{execute interrupt}}

At this point you'd normally use `linkerd dashboard`. Because this tutorial is running in Katacoda, we need to do a little extra work. Run:

`./expose-dashboard.sh`{{execute}}

This will start the dashboard and setup a tunnel for you to view it from. Cut and paste the URL that is output into your browser.

You've not added any services to the mesh yet, so the dashboard won’t have much to display beyond the status of the service mesh itself. Let's run something!
