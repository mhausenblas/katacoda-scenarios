export GOPATH=/root/work
export GOROOT=/root/bin/go
export PATH=$GOPATH/bin:$GOROOT/bin:~/bin:/usr/local/kubebuilder/bin:$PATH
export K8SGOHOME=/root/work/src/github.com/openshift-talks/k8s-go
export PS1='${PWD#"${PWD%/*/*}/"} \$ '
git config --global user.email "someone@example.com"
git config --global user.name "Kubernaut"
launch.sh
kubectl config set-context katacoda --cluster=kubernetes --namespace=default --user=kubernetes-admin