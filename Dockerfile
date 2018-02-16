# Pull base image.
FROM ubuntu:14.04

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

# Install.
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y libboost-all-dev && \
  apt-get install -y libdb++-dev

# Add files
COPY Monyxd /usr/bin/Monyxd

VOLUME ["/root/.Monyx"]

EXPOSE 41905 41906

CMD Monyxd
