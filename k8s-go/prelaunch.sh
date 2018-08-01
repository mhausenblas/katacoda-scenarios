ssh root@host01 "chmod +x ~/bin/kubebuilder ~/bin/dep ~/bin/operator-sdk"
ssh root@host01 "curl -sf https://dl.google.com/go/go1.10.3.linux-amd64.tar.gz | tar -xz -C /root/bin"
ssh root@host01 "mkdir -p /root/work/src/github.com/openshift-talks/k8s-go/"
ssh root@host01 "git clone https://github.com/openshift-talks/k8s-go.git /root/work/src/github.com/openshift-talks/k8s-go/"
ssh root@host01 "kubectl config set-context katacoda --cluster=kubernetes --namespace=default --user=kubernetes-admin && kubectl config use-context katacoda"
ssh root@host01 "apt -y install make jq nano emacs"

sleep 10
