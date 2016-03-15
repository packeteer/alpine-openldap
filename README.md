# alpine-openldap
OpenLDAP container based on Alpine Linux 3.3

version 1.02

docker run -d -P -v /srv/ldap/conf:/etc/openldap -v /srv/ldap/data:/var/lib/openldap/openldap-data packeteer/alpine-openldap

you'll need to supply your own config and database. this can be done through docker exec etc
