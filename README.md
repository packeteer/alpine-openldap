# alpine-openldap
OpenLDAP container based on Alpine Linux

version 1.05

## Usage
docker run -d -P -v conf:/etc/openldap -v data:/var/lib/openldap/openldap-data packeteer/alpine-openldap

## Notes
Default OpenLDAP config is included, but it's best if you DIY. this can be done through docker exec etc
