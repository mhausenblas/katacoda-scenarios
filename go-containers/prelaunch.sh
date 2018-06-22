ssh root@host01 "git clone https://github.com/mhausenblas/go4ops.git"
ssh root@host01 "kubectl config set-context katacoda --cluster=kubernetes --namespace=test --user=kubernetes-admin && kubectl config use-context katacoda"
sleep 5
