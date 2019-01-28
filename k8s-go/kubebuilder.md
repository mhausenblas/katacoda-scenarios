Change into the `$K8SGOHOME/kubebuilder/` directory:

`cd /root/work/src/github.com/openshift-talks/k8s-go/kubebuilder`{{execute}}

First init the codebase:

`kubebuilder init --domain k8s-go.openshift.org --license apache2 --owner "The workshop members"`{{execute}}

Then create the CRD code:

`kubebuilder create api --group policy --version v1beta1 --kind HealthCheckPolicy`{{execute}}

Now you're in an interactive setup; answer the following two questions with `y` (yes):

- `Create Resource under pkg/apis [y/n]?`
- `Create Controller under pkg/controller [y/n]?`

Before we can compile, we have to call code generation:

`make generate`{{execute}}

Next, install the CRDs like so:

`make install`{{execute}}

Finally, launch the operator using:

`go run cmd/manager/main.go`{{execute}}
