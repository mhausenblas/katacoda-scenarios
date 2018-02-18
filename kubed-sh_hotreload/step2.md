Back in the first terminal session, first we need to enable the experimental hot-reload feature:

`HOTRELOAD=true`{{execute T1}}

Now let's launch a Node.js app server defined in `test.js`:

`node test.js &`{{execute T1}}

`ps`{{execute T1}}

… and check the Node.js app server:

`curl test`{{execute T1}}

Now, go to the terminal session where you've launched `vi test.js` and update its content, for example by changing `Hello from Node.js`. Then, execute the `curl test` command again and witness the updated code live.

Note:

- To edit something in `vi`, press `i` (puts `vi` into INSERT mode) and when done, hit the `ESC` key.
- To save something in `vi`, first make sure you've hit `ESC` (puts `vi` into COMMAND mode) and then punch in `:w` and confirm with `ENTER`.
- To exit `vi`, again, first make sure you've hit `ESC` and then enter `:q` and confirm with `ENTER`.
