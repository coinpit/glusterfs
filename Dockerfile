FROM ubuntu:trusty

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends glusterfs-server

ENTRYPOINT ["/usr/sbin/glusterd", "-p", "/var/run/glusterd.pid", "-N"]
