#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


compose="$DIR/docker/setup/docker-compose.yml"

certs="$DIR/docker/setup/containers/nginx/install_certs_in_host.sh"

domain="$1"

sed -i "s|\domain|framework.dev|g" $compose