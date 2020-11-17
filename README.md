# NumerCity 

This repository contains a docker-compose configuration to run the NumerCity application locally.
This repository does *not* contain any sensitive or proprietary information.
Those must be supplied before running those scripts.

## Setup the application

Run the following scripts:

```
./01-configure.sh
./02-restore-db.sh
CTRL+C
```

Optional: update certificate

```
sudo ./02-update-cert.sh
```

To launch the application:

```
./up.sh
```

To stop the application

```
./down.sh
```

## Create the basic authenticated user

```
htpasswd -c etc/nginx/.htpasswd numercity
```

## Install the self-signed certificate on Windows


