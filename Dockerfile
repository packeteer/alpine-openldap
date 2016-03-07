FROM gliderlabs/alpine

MAINTAINER packeteer <packeteer@gmail.com>

RUN apk-install openldap openldap-clients openldap-back-hdb openldap-back-bdb

#ENV LDAPCONF /etc/openldap/slapd.conf

EXPOSE 389

CMD ["/usr/sbin/slapd","-d 256","-F /etc/openldap/slapd.d"]
