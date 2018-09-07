#!/bin/bash

curl https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip 2> /dev/null \
  | zcat > /usr/local/bin/ngrok \
  && chmod a+x /usr/local/bin/ngrok

start-stop-daemon --status --pidfile /tmp/dashboard.pid

if [ $? -ne 0 ]; then
  # TODO: wait until running
  start-stop-daemon \
    --background \
    --make-pidfile \
    --pidfile /tmp/dashboard.pid \
    -S \
    --startas /bin/bash \
    -- -c "exec $(pwd)/.conduit/bin/conduit dashboard --port 8080 --url &> /root/dashboard.log"
fi

start-stop-daemon --status --pidfile /tmp/ngrok-dashboard.pid

if [ $? -ne 0 ]; then
  start-stop-daemon \
    --background \
    --make-pidfile \
    --pidfile /tmp/ngrok-dashboard.pid \
    -S \
    --startas /bin/bash \
    -- -c "exec /usr/local/bin/ngrok http --log stdout --log-level debug --host-header rewrite 8080 &> /root/ngrok.log"
  sleep 3
fi

printf "The dashboard is available at:\n\n"

echo $(cat ngrok.log \
  | sed -n 's/.* URL:\([^ ]*\) .*/\1/p' \
  | head -n1)"/api/v1/namespaces/conduit/services/web:http/proxy/"

printf "\ncut and paste this URL into your browser.\n"
