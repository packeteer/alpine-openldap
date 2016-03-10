FROM gliderlabs/alpine

MAINTAINER packeteer <packeteer@gmail.com>

RUN apk-install openldap openldap-clients openldap-back-hdb openldap-back-bdb ldapvi

EXPOSE 389 636

ENTRYPOINT ["/usr/sbin/slapd"]
CMD ["-d", "256", "-F", "/etc/openldap/slapd.d", "-u", "ldap", "-g", "ldap"]
