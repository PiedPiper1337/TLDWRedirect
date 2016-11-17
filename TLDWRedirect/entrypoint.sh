#!/usr/bin/env bash
#https://stackoverflow.com/questions/38629688/play-framework-with-ssl-certificates-from-lets-encrypt
#letsencrypt certonly --standalone -d sumyoutube.com -d www.sumyoutube.com
#
#openssl pkcs12 -export -in fullchain1.pem -inkey privkey1.pem \
#    -out server.p12 -name output \
#    -CAfile ca.crt -caname root
#
#keytool -importkeystore \
#    -deststorepass 123456 -destkeypass 123456 -destkeystore sumyoutube.jks \
#    -srckeystore server.p12 -srcstoretype PKCS12 -srcstorepass 123456

/root/tldwredirect-1.0-SNAPSHOT/bin/tldwredirect -Dhttp.port=disabled -Dhttps.port=443 -Dhttps.keyStore=/root/secrets/sumyoutube.jks -Dhttps.keyStorePassword=123456