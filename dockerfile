FROM ubuntu:14.04

RUN apt-get update && apt-get install -y ntp && apt-get clean && rm -rf /var/lib/apt/lists/*

EXPOSE 123
CMD ["/usr/sbin/ntpd", "-n"]