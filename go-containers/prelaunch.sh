ssh root@host01 "mkdir -p /root/work/src/github.com/mhausenblas/go4ops/"
ssh root@host01 "git clone https://github.com/mhausenblas/go4ops.git /root/work/src/github.com/mhausenblas/go4ops/"
ssh root@host01 "kubectl config set-context katacoda --cluster=kubernetes --namespace=test --user=kubernetes-admin && kubectl config use-context katacoda"
sleep 10
