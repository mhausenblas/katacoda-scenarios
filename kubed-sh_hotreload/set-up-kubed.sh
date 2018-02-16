ssh root@host01 "curl -s -L https://github.com/mhausenblas/kubed-sh/releases/download/0.5/kubed-sh-linux -o kubed-sh"
ssh root@host01 "chmod +x kubed-sh && sudo mv kubed-sh /usr/local/bin"
ssh root@host01 "kubectl config set-context katacoda --cluster=kubernetes --namespace=test --user=kubernetes-admin && kubectl config use-context katacoda"
