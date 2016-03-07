FROM gliderlabs/alpine

MAINTAINER packeteer <packeteer@gmail.com>

<<<<<<< HEAD
RUN apk-install openldap openldap-clients openldap-back-hdb openldap-back-bdb
=======
RUN apk-install openldap openldap-back-hdb openldap-clients
>>>>>>> 36e55e1393cc708609da8596f74363040657e068

ENV LDAPCONF /etc/openldap/slapd.conf

EXPOSE 389 636

<<<<<<< HEAD
CMD ["/usr/sbin/slapd","-d 256","-F /etc/openldap/slapd.d"]
=======
CMD ["slapd -d 256 -F /etc/openldap"]
>>>>>>> 36e55e1393cc708609da8596f74363040657e068
