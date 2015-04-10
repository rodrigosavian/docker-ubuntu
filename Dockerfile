# Ubuntu
#
# VERSION               1.0

FROM ubuntu:latest
MAINTAINER Rodrigo Savian <rodrigosavian@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No

RUN locale-gen en_US en_US.UTF-8
RUN apt-get update && apt-get upgrade -y
RUN apt-get install build-essential lsb-release -y
RUN apt-get install openssh-server supervisor git-core mysql-client postgresql-client -y

RUN apt-get clean
RUN rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*