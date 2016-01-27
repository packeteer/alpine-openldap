FROM gliderlabs/alpine:3.3

MAINTAINER packeteer <packeteer@gmail.com>

RUN apk add --update --no-cache openldap openldap-back-hdb openldap-clients

VOLUME ["/srv/openldap/conf", "/etc/openldap"]
VOLUME ["/srv/openldap/data", "/var/lib/openldap"]

ENV LDAPCONF /etc/openldap/slapd.conf

EXPOSE 389 636

USER ["ldap"]
CMD ["-d", "256"]

ENTRYPOINT [ "slapd" ]
