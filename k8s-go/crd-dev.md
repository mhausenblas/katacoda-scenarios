Change into the `$K8SGOHOME/crd-go/` directory:

`cd /root/work/src/github.com/openshift-talks/k8s-go/crd-go`{{execute}}

Make sure the `HealthCheckPolicy` CRD is available:

`kubectl get crd`{{execute}}

Now you can generate the code using the following command:

`hack/update-codegen.sh`{{execute}}