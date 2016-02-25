FROM gliderlabs/alpine

MAINTAINER packeteer <packeteer@gmail.com>

RUN apk-install openldap openldap-back-hdb openldap-clients

ENV LDAPCONF /etc/openldap/slapd.conf

EXPOSE 389 636

CMD ["slapd -d 256 -F /etc/openldap"]
