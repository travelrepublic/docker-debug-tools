FROM ubuntu:18.04
MAINTAINER David Smith <dsmith@travelrepublic.co.uk>

ENV DEBIAN_FRONTEND noninteractive

RUN \
  apt-get update && \
  apt-get -y install \
          curl \
	  dnsutils \
          git-core \
	  iputils-ping \
	  net-tools \
	  telnet \
	  strace \
	  tcpdump \
	  tcptrace \
          unzip \
          vim && \
  rm -rf /var/lib/apt/lists/*

ENTRYPOINT ['/bin/bash']
