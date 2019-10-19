FROM ubuntu:18.04
MAINTAINER Sascha Effert
ADD start-bind.sh /usr/local/bin/start-bind.sh
RUN apt-get update -q && \
  apt-get -y upgrade && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install bind9 rsyslog dnsutils && \
  chmod +x /usr/local/bin/start-bind.sh && \
  rm -rf /etc/bind/* && \
  rm -rf /var/lib/apt/lists/*
VOLUME /etc/bind
CMD /usr/local/bin/start-bind.sh
