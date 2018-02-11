Let's install `kubed-sh` first. For this, we download the Linux binary (may take a few moments, downloads a ~3 MB binary):

`curl -s -L https://github.com/mhausenblas/kubed-sh/releases/download/0.5/kubed-sh-linux -o kubed-sh`{{execute}}

And now we make it executable and move it to a well-known place:

`chmod +x kubed-sh && sudo mv kubed-sh /usr/local/bin`{{execute}}

The next step is strictly speaking not necessary, but we want to _make sure_ that a defined context exists to operate on:

`kubectl config set-context katacoda --cluster=kubernetes --user=kubernetes-admin && kubectl config use-context katacoda`{{execute}}

Well done, you've successfully installed `kubed-sh`, now let's move on into using it!
