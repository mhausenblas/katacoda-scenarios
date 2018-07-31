Change into the `$K8SGOHOME/crd-go/` directory:

`cd /root/work/src/github.com/openshift-talks/k8s-go/crd-go`{{execute}}

Make sure the `HealthCheckPolicy` CRD is available:

`kubectl get crd`{{execute}}

Now you can generate the code implementing the CRD using the following command:

`hack/update-codegen.sh`{{execute}}

Finally, we can execute the client using above generated code:

`go run main.go`{{execute}}