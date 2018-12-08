FROM alpine:latest

RUN apk add --no-cache openntpd
COPY stuff/ntpd.conf /etc/ntpd.conf

EXPOSE 123/udp
ENTRYPOINT [ "/usr/sbin/ntpd", "-v", "-d", "-s" ]