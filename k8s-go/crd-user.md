We now turn our attention to [custom resources](https://kubernetes.io/docs/concepts/extend-kubernetes/api-extension/custom-resources/). 

Change into the `$K8SGOHOME/crd-yaml/` directory:

`cd /root/work/src/github.com/openshift-talks/k8s-go/crd-yaml`{{execute}}


First, you will install the pre-defined [HealthCheckPolicy](https://github.com/openshift-talks/k8s-go/blob/master/crd-yaml/healthcheckpolicy-crd.yaml) CRD type like so:

`kubectl -n default apply -f healthcheckpolicy-crd.yaml`{{execute}}

Check if the CRD is available:

`kubectl -n default get crd`{{execute}}

Now you can create an instance of this `HealthCheckPolicy` CRD using the [example health check policy](https://github.com/openshift-talks/k8s-go/blob/master/crd-yaml/example-healthcheckpolicy.yaml) prepared:

`kubectl -n default apply -f example-healthcheckpolicy.yaml`{{execute}}

And check if the instance has been created:

`kubectl -n default get healthcheckpolicies`{{execute}}

Bonus: if you have time left, try adding support for OpenAPI v3 schema validation (slides 50/51).

Now that we know how to create CRDs from an end-user perspective, let's move on to the programmatic part.