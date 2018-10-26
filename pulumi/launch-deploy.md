Next, we gonna launch a deployment, the cloud native way.

From the [example repo](https://github.com/pulumi/examples/blob/master/kubernetes-ts-nginx/index.ts):

```
import * as pulumi from "@pulumi/pulumi";
import * as k8s from "@pulumi/kubernetes";

let config = new pulumi.Config();

let nginxLabels = { app: "nginx" };
let nginxDeployment = new k8s.apps.v1.Deployment("nginx-deployment", {
    spec: {
        selector: { matchLabels: nginxLabels },
        replicas: config.getNumber("replicas") || 2,
        template: {
            metadata: { labels: nginxLabels },
            spec: {
                containers: [{
                    name: "nginx",
                    image: "nginx:1.7.9",
                    ports: [{ containerPort: 80 }]
                }],
            },
        },
    },
});

export let nginx = nginxDeployment.metadata.apply(md => md.name);
```
