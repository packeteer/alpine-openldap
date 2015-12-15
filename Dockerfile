FROM gliderlabs/alpine:3.2

MAINTAINER packeteer <packeteer@gmail.com>

RUN apk add --update openldap openldap-back-hdb openldap-clients && rm -rf /var/cache/apk/*

#ADD slapd.conf /etc/openldap/slapd.conf
#ADD slapd.ldif /etc/openldap/slapd.ldif

VOLUME ["/conf", "/etc/openldap"]
VOLUME ["/data", "/var/lib/openldap"]

ENV LDAPCONF /etc/openldap/slapd.conf


EXPOSE 636

CMD ["slapd", "-u", "ldap", "-g", "ldap", "-d", "32768"]

#ENTRYPOINT [ "/sbin/slapd" ]
