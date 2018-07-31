To create the app-operator, do:

`operator-sdk new app-operator --api-version=policy.k8s-go.openshift.org/v1beta1 --kind=HealthCheckPolicy`{{execute}}

Now you can launch it via:

`OPERATOR_NAME=policy-operator operator-sdk up local`{{execute}}

You can also build the container image, using:

`operator-sdk build <docker-image-name-including-registry>`{{execute}}