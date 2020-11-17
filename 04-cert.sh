#!/bin/bash

openssl req -x509  -sha256 -nodes -newkey rsa:2048 \
	-days 720 \
	-keyout var/www/numercity.dev/certs/numercity.dev.key \
	-out var/www/numercity.dev/certs/numercity.dev.crt \
	-subj '/C=FR/O=NumerCity/CN=localhost/emailAddress=contact@numercity.fr/' \
	-addext 'subjectAltName=DNS.1:localhost,DNS.2:127.0.0.1' \
	-addext 'keyUsage=digitalSignature,keyCertSign,cRLSign' \
	-addext 'extendedKeyUsage=clientAuth,serverAuth'


