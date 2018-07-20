curl examples around discovery and creating/editing a resource

In one terminal, do:

`kubectl proxy`{{execute}}

Now open a second terminal (using the `+` button):

`curl 127.0.0.1:8001/apis/`{{execute}}