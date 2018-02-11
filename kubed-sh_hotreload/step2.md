First, we need to enable the experimental hot-reload feature (make sure the focus is on the terminal session with `kubed-sh` running):

`HOTRELOAD=true`{{execute}}

Now let's launch a Node.js app server defined in `test.js`:

`node test.js &`{{execute}}

`ps`{{execute}}

… and check the Node.js app server:

`curl test`{{execute}}

Change something in the other terminal session where you've launched `vi test.js` and do the `curl test` again.
