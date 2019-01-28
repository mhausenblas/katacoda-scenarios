Change into the `$K8SGOHOME/operator-sdk/` directory:

`cd /root/work/src/github.com/openshift-talks/k8s-go/operator-sdk`{{execute}}

To create the `app-operator`, do the following:

`operator-sdk new app-operator`{{execute}}

Now change to the newly created `app-operator` directory:

`cd app-operator`{{execute}}

To add support for the policy, that is, to add a new API for the custom resource `HealthCheckPolicy`, do:

`operator-sdk add api --api-version=policy.k8s-go.openshift.org/v1beta1 --kind=HealthCheckPolicy`{{execute}}

Next, to add a new controller that watches for `HealthCheckPolicy` resources:

`operator-sdk add controller --api-version=policy.k8s-go.openshift.org/v1beta1 --kind=HealthCheckPolicy`{{execute}}

Now you can launch the operator via:

`OPERATOR_NAME=policy-operator operator-sdk up local`{{execute}}

You can also build the container image, using:

`operator-sdk build <docker-image-name-including-registry>`{{execute}}