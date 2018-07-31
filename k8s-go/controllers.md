Change into the `$K8SGOHOME/controller/` directory:

`cd /root/work/src/github.com/openshift-talks/k8s-go/controller`{{execute}}

Run the prepared controller via this command:

`kubectl apply -f config/healthcheckpolicy-crd.yaml`{{execute}}

… and then:

`go run cmd/policy-controller/main.go`{{execute}}

Now create a test resource using:

`kubectl apply -f config/example-healthcheckpolicy.yaml`{{execute}}

And rebuild the generated code with:

`hack/update-codegen.sh`{{execute}}
