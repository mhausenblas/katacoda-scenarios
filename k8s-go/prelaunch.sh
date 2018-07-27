ssh root@host01 "mkdir -p /root/work/src/github.com/openshift-talks/k8s-go/"
ssh root@host01 "git clone https://github.com/openshift-talks/k8s-go.git /root/work/src/github.com/openshift-talks/k8s-go/"
ssh root@host01 "kubectl config set-context katacoda --cluster=kubernetes --namespace=test --user=kubernetes-admin && kubectl config use-context katacoda"
ssh root@host01 "chmod +x ~/bin/kubebuilder"

sleep 10
