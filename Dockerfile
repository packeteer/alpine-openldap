FROM gliderlabs/alpine:3.2

MAINTAINER packeteer <packeteer@gmail.com>

RUN apk add --update openldap openldap-back-hdb openldap-clients && rm -rf /var/cache/apk/*

VOLUME ["/srv/openldap/conf", "/etc/openldap"]
VOLUME ["/srv/openldap/data", "/var/lib/openldap"]

ENV LDAPCONF /etc/openldap/slapd.conf

EXPOSE 636

USER ["ldap"]
CMD ["-d", "256"]

ENTRYPOINT [ "slapd" ]
