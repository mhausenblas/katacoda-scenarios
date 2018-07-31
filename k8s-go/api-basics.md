As a warm-up exercise, we're having a look at how to access the Kubernetes API using the command line.

In one terminal, do the following (which proxies the API so that we can access it locally):

`kubectl proxy`{{execute T1}}

Now execute in a second terminal the following:

`curl 127.0.0.1:8001/apis/`{{execute T2}}

_Note that you can also create new terminals manually, using the `+` button next to the `Terminal` tab._

Alternatively, instead of `curl` you can also use the raw mode of `kubectl`, again in the second terminal:

`kubectl get --raw=/apis`{{execute T2}}

Now we first annotate the `default` namespace with `kubectl` and then, using `curl` we update the representation using the JSON payload:

`kubectl annotate namespace default workshop=gopherconuk`{{execute T2}}

To confirm, read back the annotation using two different methods:

`kubectl get namespace default -o json`{{execute T2}}

`curl 127.0.0.1:8001/api/v1/namespaces/default`{{execute T2}}

And now we update that annotation using `curl`, changing the value of the `workshop` key from `gopherconuk` to a timestamp:

`curl http://127.0.0.1:8001/api/v1/namespaces/default | jq ".metadata.annotations[\"workshop\"] = \"$(date)\"" | curl -H "Content-Type: application/json" -X PUT -d @- http://127.0.0.1:8001/api/v1/namespaces/default`{{execute T2}}

That was fun! Now it's time for switching gears and moving to Go: meet the `client-go` library.