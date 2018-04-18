FROM ubuntu:16.04
MAINTAINER David Smith <dsmith@travelrepublic.co.uk>

ENV DEBIAN_FRONTEND noninteractive

RUN \
  apt-get update && \
  apt-get -y install \
          curl \
	  dnsutils \
          git-core \
	  net-tools \
	  strace \
	  tcpdump \
	  tcptrace \
          unzip \
          vim && \
  rm -rf /var/lib/apt/lists/*
