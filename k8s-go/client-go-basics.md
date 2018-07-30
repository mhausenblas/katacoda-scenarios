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

Time to move on the custom resources.

