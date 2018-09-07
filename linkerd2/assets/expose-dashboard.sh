#!/bin/bash

kubectl apply -f loadbalancer/

kubectl patch -n=linkerd svc web --patch '{ "spec": {"type": "LoadBalancer" } }'

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

sleep 30

# note: this is an IP in the private range, need to make it publicly available:

echo http://$(kubectl get -n=linkerd svc/web -o go-template='{{(index .status.loadBalancer.ingress 0).ip}}'):8084/

printf "\ncut and paste this URL into your browser.\n"
