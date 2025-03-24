# PHP docker

This repository contains a setup for running PHP with FPM and Nginx. Everything is preconfigured to serve as a base for your development.

### Commands:

- `./name.sh hello.dev`: Sets your domain as the configured one for nginx and SSL certificates. This allows you to work with HTTPS for local development. It uses `mkcert`  for generating the SSL certificates.

In Ubuntu you can install it like this:
```sh
sudo apt-get -y install mkcert
```

- `./docker/setup/build.sh`: Builds docker-compose.yaml (feel free to modify this file).
- `./docker/up.sh [args]`: Lifts your docker compose. You may want to do it in detached mode: `./docker/up.sh -d`
- `./docker/down.sh`: Down down down.
- `./docker/resatart.sh`: Restarts your containers.

