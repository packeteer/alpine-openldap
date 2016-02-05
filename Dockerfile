FROM gliderlabs/alpine:3.3

MAINTAINER packeteer <packeteer@gmail.com>

RUN apk add --update --no-cache openldap openldap-back-hdb openldap-clients

ENV LDAPCONF /etc/openldap/slapd.conf

EXPOSE 389

ENTRYPOINT ["slapd"]
CMD ["-d 256"]
