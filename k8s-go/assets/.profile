export GOPATH=/root/work
export GOROOT=/root/bin/go
export PATH=$GOPATH/bin:$GOROOT/bin:~/bin:/usr/local/kubebuilder/bin:$PATH
export PS1='${PWD#"${PWD%/*/*}/"} \$ '
export K8SGOHOME=/root/work/src/github.com/openshift-talks/k8s-go

echo "GOPATH=$GOPATH"
echo "K8SGOHOME=$K8SGOHOME"
