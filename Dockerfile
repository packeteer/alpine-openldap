FROM gliderlabs/alpine:3.2

MAINTAINER packeteer <packeteer@gmail.com>

RUN apk add --update openldap openldap-back-hdb openldap-clients && rm -rf /var/cache/apk/*

ADD slapd.conf /etc/openldap/slapd.conf
ADD slapd.ldif /etc/openldap/slapd.ldif
ENV LDAPCONF /etc/openldap/slapd.conf

VOLUME ["/data", "/var/lib/openldap"]

EXPOSE 636

CMD ["slapd", "-u", "ldap", "-g", "ldap", "-d", "32768"]

#ENTRYPOINT [ "/sbin/slapd" ]
