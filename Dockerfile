FROM google/golang
MAINTAINER Ian Blenke <ian@blenke.com>

RUN go get github.com/tools/godep && \
    godep get github.com/deis/deisctl && \
    cd /gopath/src/github.com/deis/deisctl && \
    godep go clean . && \
    CGO_ENABLED=0 godep go build -a -ldflags '-s' . && \
    cp -f deisctl /gopath/bin/deisctl && \
    mkdir -p /.ssh && \
    ln -s /gopath/bin/deisctl /deisctl

ADD https://github.com/mitchellh/vagrant/blob/master/keys/vagrant /.ssh/id_rsa

ADD installer /installer
CMD /installer

