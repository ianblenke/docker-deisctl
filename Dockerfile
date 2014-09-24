FROM google/golang
MAINTAINER Ian Blenke <ian@blenke.com>

RUN go get github.com/tools/godep && \
    godep get github.com/deis/deisctl && \
    mkdir -p /.ssh && \
    ln -s /gopath/bin/deisctl /deisctl

ADD vagrant_insecure_private_key /.ssh/id_rsa

ADD installer /installer
CMD /installer

