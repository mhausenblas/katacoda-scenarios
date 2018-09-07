#!/bin/bash

start-stop-daemon --status --pidfile /tmp/ngrok-emojivoto.pid

if [ $? -ne 0 ]; then
  start-stop-daemon \
    --background \
    --make-pidfile \
    --pidfile /tmp/ngrok-emojivoto.pid \
    -S \
    --startas /bin/bash \
    -- -c "exec /usr/local/bin/ngrok http --log stdout --log-level debug $(minikube -n emojivoto service web-svc --url | cut -d/ -f3) &> /root/ngrok-emojivoto.log"
  sleep 3
fi

printf "Check out emojivoto (or share it with your friends) at:\n\n"

echo $(cat ngrok-emojivoto.log \
  | sed -n 's/.* URL:\([^ ]*\) .*/\1/p' \
  | head -n1)
