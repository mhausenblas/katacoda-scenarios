. ~/.bashrc

export GOPATH=/root/work
export GOROOT=/root/bin/go
export PATH=$GOPATH/bin:$GOROOT/bin:~/bin:/usr/local/kubebuilder/bin:$PATH
export PS1='${PWD#"${PWD%/*/*}/"} \$ '
