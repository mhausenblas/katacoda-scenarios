That's it, in a nutshell. With `kubed-sh`, you can use a Kubernetes cluster just like your local machine, without learning new concepts or commands.

Here are a few areas where `kubed-sh` does go beyond the local shell analogy:

- In itself `kubed-sh` is stateless. In other words, all the state is kept in Kubernetes via labels, see also the [design](http://kubed.sh/design).
- It extends the concept of an [environment](http://kubed.sh/#environments) to something you can create and actively switch to.
- For long-running processes like an app server you can use the hot-reload feature (since [0.4](https://github.com/mhausenblas/kubed-sh/releases/tag/0.4.1)) that makes `kubed-sh` watch for chances, allowing you to edit your sources locally and update them immediately on save into the Kubernetes cluster. See also the link to the demo below.  

Learn more about how to use `kubed-sh` here:

- [Introducing kubed-sh](https://www.youtube.com/watch?v=gqi1-XLiq-o) (5min video on YouTube)
- [kubed-sh demo: hot-reload](https://www.useloom.com/share/441a97fd48ae46da8d786194f93968f6) (2min video on Loom)
