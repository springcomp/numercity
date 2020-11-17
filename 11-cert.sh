#!/bin/bash

echo "Generating numercity.dev self-signed HTTPS/SSL certificate"

openssl req -x509  -sha256 -nodes -newkey rsa:2048 -days 720 \
	-keyout var/www/numercity.dev/certs/numercity.dev.key \
	-out var/www/numercity.dev/certs/numercity.dev.crt \
	-subj '/C=FR/O=NumerCity/CN=numercity.dev/emailAddress=contact@numercity.fr/' \
	-addext 'subjectAltName=DNS.1:numercity.dev,DNS.2:localhost,DNS.3:127.0.0.1' \
	-addext 'keyUsage=digitalSignature,keyCertSign,cRLSign' \
	-addext 'extendedKeyUsage=clientAuth,serverAuth'

