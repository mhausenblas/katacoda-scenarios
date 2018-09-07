#!/bin/bash

kubectl apply -f loadbalancer/

sleep 60

start-stop-daemon --status --pidfile /tmp/dashboard.pid

if [ $? -ne 0 ]; then
  start-stop-daemon \
    --background \
    --make-pidfile \
    --pidfile /tmp/dashboard.pid \
    -S \
    --startas /bin/bash \
    -- -c "exec $(pwd)/.linkerd2/bin/linkerd dashboard --port 8080 --url &> /root/dashboard.log"
fi

printf "The dashboard is available at:\n\n"

echo kubectl get -n=linkders svc/web -o go-template='{{(index .status.loadBalancer.ingress 0).ip}}'"

printf "\ncut and paste this URL into your browser.\n"
