Before we launch `kubed-sh`, let's get some examples set up:

`git clone https://github.com/mhausenblas/kubed-sh.git && cd kubed-sh/tc`{{execute}}

Next, to launch `kubed-sh`, simply execute:

`kubed-sh`{{execute}}

Now you should see `kubed-sh` pre-pulling container images and then you're good to go. This process takes some 30 seconds to complete and is only required the first time you launch `kubed-sh`.

Start by entering `help`{{execute}} and then try launching a script like so:

`node test.js &`{{execute}}

See the status:

`ps`{{execute}}

Invoke it:

`curl test`{{execute}}

You can leave `kubed-sh` at any point in time using `exit`{{execute}}. See also the [usage reference](http://kubed.sh/#use-it) for more details what you can do.
