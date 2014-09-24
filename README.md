# deisctl docker image

This is a docker image patterned after [jpetaazzo/nsenter](https://github.com/jpetazzo/nsenter) that provides the deisctl command for deploying and managing a deis cluster.

To install the deisctl runtime, you could use:

  mkdir -p /usr/local/share/deisctl/units
  docker run --rm -v /usr/local/bin:/target -v /usr/local/share/deisctl/units:/units ianblenke/deisctl

To install deis on a coreos fleet:

  docker run -t -i ianblenke/deisctl /installer --endpoint=http://172.16.42.1:4001 install platform
  docker run -t -i ianblenke/deisctl /installer --endpoint=http://172.16.42.1:4001 start platform

