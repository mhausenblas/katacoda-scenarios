Change into the `$K8SGOHOME/operator-sdk/` directory:

`cd /root/work/src/github.com/openshift-talks/k8s-go/operator-sdk`{{execute}}

To create the app-operator, do the following:

`operator-sdk new app-operator --api-version=policy.k8s-go.openshift.org/v1beta1 --kind=HealthCheckPolicy`{{execute}}

Now you can launch it via:

`OPERATOR_NAME=policy-operator operator-sdk up local`{{execute}}

You can also build the container image, using:

`operator-sdk build <docker-image-name-including-registry>`{{execute}}