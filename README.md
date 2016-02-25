# alpine-openldap
OpenLDAP container based on Alpine Linux 3.3

this is a work in progress ie. it prob doesn't work :)

version .07

docker run -d -p 389:389 -v conf:/etc/openldap -v data:/var/lib/openldap/openldap-data packeteer/alpine-openldap
