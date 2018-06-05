FROM debian:jessie

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get update && apt-get install -y apcupsd && apt-get clean

ENTRYPOINT ["/sbin/apcupsd", "-b"]

