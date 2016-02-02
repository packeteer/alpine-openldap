FROM gliderlabs/alpine:3.3

MAINTAINER packeteer <packeteer@gmail.com>

RUN apk add --update --no-cache openldap openldap-back-hdb openldap-clients

VOLUME ["/etc/openldap", "/var/lib/openldap"]
#ADD ?

ENV LDAPCONF /etc/openldap/slapd.conf

EXPOSE 389

#USER ["nobody"]

ENTRYPOINT exec slapd -d 256
