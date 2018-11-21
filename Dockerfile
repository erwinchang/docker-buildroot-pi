FROM ubuntu:14.04

MAINTAINER Erwin "m9207216@gmail.com"

# for kernel/scripts/mkkrnlimg 32bit
#RUN dpkg --add-architecture i386

# https://github.com/sameersbn/docker-gitlab/blob/master/Dockerfile
RUN apt-get update \
 && apt-get install -y minicom git ncurses-dev gedit flex bison \
 && apt-get install -y texinfo g++ gettext u-boot-tools autoconf
# && rm -rf /var/lib/apt/lists/*

RUN [ "/bin/bash" ]
