FROM ubuntu:trusty

RUN apt-get update && \
    apt-get install -y glusterfs-server

ENTRYPOINT ["/usr/sbin/glusterd", "-p", "/var/run/glusterd.pid", "-N"]
