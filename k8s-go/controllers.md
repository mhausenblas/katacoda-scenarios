Change into the `$K8SGOHOME/controller/` directory:

`cd /root/work/src/github.com/openshift-talks/k8s-go/controller`{{execute}}

Run the prepared controller via these two commands:

`kubectl -n default apply -f config/healthcheckpolicy-crd.yaml`{{execute T1}}

… and then:

`go run cmd/policy-controller/main.go`{{execute T1}}

Now create a test resource (in the second terminal) using:

`kubectl  -n default apply -f config/example-healthcheckpolicy.yaml`{{execute T2}}

Go back to the first terminal and observe the output.

You can rebuild the generated code with:

`hack/update-codegen.sh`{{execute}}

Bonus: if you have time left, implement the business logic properly. That is, in [controller/cmd/policy-controller/controller/controller.go](https://github.com/openshift-talks/k8s-go/blob/master/controller/cmd/policy-controller/controller/controller.go#L168), rather than returning `42`, report the actual number of failed pods.