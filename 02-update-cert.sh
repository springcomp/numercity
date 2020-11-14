#!/bin/bash

[[ "/usr/local/share/ca-certificates/numercity.dev.crt" ]] && sudo rm /usr/local/share/ca-certificates/numercity.dev.crt
[[ "/etc/ssl/certs/numercity.dev.pem" ]] && sudo rm /etc/ssl/certs/numercity.dev.pem
sudo update-ca-certificates

sudo cp ./var/www/numercity.dev/certs/numercity.dev.crt /usr/local/share/ca-certificates
sudo update-ca-certificates
