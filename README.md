# peertube-rpi-setup

This is a guide for setting up Peertube on raspberry pi 4. To facilitate rapid deployment, we use docker here.
The docker configurations are forked from [here](https://github.com/Chocobozzz/PeerTube), with customization on armv7.

We replace the Peertube and Postfix image with custom builds since the original one does not support armv7.

## Setup

```bash
git clone https://github.com/nandiheath/peertube-rpi-setup.git

cd peertube-rpi-setup

# this will install docker and related packages
sudo ./setup.sh
```

## Run

```bash

# need to restart the shell first
exit


cd production

# Run without daemon to make sure everything is OK

docker-compose up
# docker-compose up -d

```

## FAQ

- SSL cert is not generated

```bash
# check the logs for traefik
docker ps | grep traefik | awk '{print $1}' | xargs -I '{}' docker logs -f {}

# there is a chance the acme.json with wrong permissions
sudo chmod 600 docker-volume/traefik/acme.json
```
