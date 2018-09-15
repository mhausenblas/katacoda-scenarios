It’s time to install the control plane onto your OpenShift cluster. We will install the control plane in a dedicated `linkerd` project where it can easily be removed. Let's get started by logging in (needs admin to create the respective RBAC settings):

`oc login -u admin -p admin`{{execute}}

OK, ready to install Linkerd's control plane? Here we go:

`oc new-project linkerd && linkerd install | sed -e '/kind: Namespace/,+3d' | oc apply -f -`{{execute}}

Above generates a bunch of Kubernetes resources and pipes it to `oc` which then applies it to your OpenShift cluster.

Let's wait until everything is up and running, which may take a minute or so. An easy way to do that is the following (hint: use `CTRL+C` to stop the `watch` command to updating you once you see all pods in the `Running` status):

`watch oc get po -l linkerd.io/control-plane-ns=linkerd`{{execute}}

Once all the pods started are ready, it is possible to also view the Linkerd2 server's version:

`linkerd version`{{execute interrupt}}

At this point you'd normally use `linkerd dashboard`. Because this tutorial is running in Katacoda, we need to do a little extra work. Run:

`oc expose svc `{{execute}}

You've not added any services to the mesh yet, so the dashboard won’t have much to display beyond the status of the service mesh itself. Let's run something!
