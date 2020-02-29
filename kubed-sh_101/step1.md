Let's install `kubed-sh` first. For this, we download the Linux binary (note: this may take a few moments, downloads a ~3 MB binary):

`curl -L https://github.com/mhausenblas/kubed-sh/releases/latest/download/kubed-sh_linux_amd64.tar.gz \
    -o kubed-sh.tar.gz && \
    tar xvzf kubed-sh.tar.gz kubed-sh && \
    mv kubed-sh /usr/local/bin && \
    rm kubed-sh*`{{execute}}

Well done, you've successfully installed `kubed-sh`, now let's move on into using it!
