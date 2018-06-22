ssh root@host01 "export GOROOT=/usr/local/go"
ssh root@host01 "export GOPATH=/root/go4ops"
ssh root@host01 "export G4OHOME=/root/go4ops"
ssh root@host01 "git clone https://github.com/mhausenblas/go4ops.git"
ssh root@host01 "kubectl config set-context katacoda --cluster=kubernetes --namespace=test --user=kubernetes-admin && kubectl config use-context katacoda"
sleep 10
