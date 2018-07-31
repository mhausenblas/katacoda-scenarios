First:

`kubebuilder init --domain k8s-go.openshift.org --license apache2 --owner "The workshop members"`{{execute}}

Then:

`kubebuilder create api --group policy --version v1beta1 --kind HealthCheckPolicy`{{execute}}

Next, we install the CRDs:

`make install`{{execute}}

Finally, we launch the operator using:

`go run cmd/manager/main.go`{{execute}}