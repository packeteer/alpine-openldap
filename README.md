# alpine-openldap
OpenLDAP container based on Alpine Linux 3.3

version 1.03

docker run -d -P -v /srv/ldap/conf:/etc/openldap -v /srv/ldap/data:/var/lib/openldap/openldap-data packeteer/alpine-openldap

Default OpenLDAP config is included, but it's best if you DIY. this can be done through docker exec etc
