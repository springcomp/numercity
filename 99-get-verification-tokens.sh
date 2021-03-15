#!/bin/sh

cat >/tmp/registrations.sql <<EOF
use authentication;
select concat('https://numercity.dev/confirmRegistration?token=', token) as registrations from verification_token;
EOF

mysql --protocol tcp -P 3306 -h localhost --user guest < /tmp/registrations.sql >/tmp/registrations.txt
