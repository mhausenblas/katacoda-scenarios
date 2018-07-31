The goal of this exercise is listing all worker nodes using `client-go`.

Change into the `$K8SGOHOME/client-go-basic/` directory:

`cd /root/work/src/github.com/openshift-talks/k8s-go/client-go-basic`{{execute}}

First need to make sure the [dependencies](https://github.com/openshift-talks/k8s-go/blob/master/client-go-basic/Gopkg.toml) are installed (you only need to do it once):

`dep ensure`{{execute}}

Now you can execute [main.go](https://github.com/openshift-talks/k8s-go/blob/master/client-go-basic/main.go):

`go run main.go`{{execute}}

You should see something like the following as the output:

`[master]`

Try modifying things, for example, rather than listing nodes, list pods like so:

`pods, _ := clientset.CoreV1().Pods('abc').List(metav1.ListOptions{})`

Next, we look at informers. For that, change into the `$K8SGOHOME/client-go-informer/` directory:

`cd /root/work/src/github.com/openshift-talks/k8s-go/client-go-informer`{{execute}}

And as above first make sure the [dependencies](https://github.com/openshift-talks/k8s-go/blob/master/client-go-informer/Gopkg.toml) are installed:

`dep ensure`{{execute}}

You can now launch the informer like so (note that it takes tens of seconds until you see some output):

`go run main.go`{{execute T1}}

Once you see `Can't get updates on pod `shell`: pod "shell" not found` you can proceed to launch a pod in a second terminal:

`kubectl run -i -t --rm shell --restart=Never --image=quay.io/mhausenblas/jump:0.2 -- sh`{{execute T2}}

Now check the output of the second terminal and once you see `If you don't see a command prompt, try pressing enter.` you can switch back to the first terminal.

OK, with that you know the basics of `client-go` and now it's time to move on the custom resources.

