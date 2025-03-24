#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


compose="$DIR/docker/setup/docker-compose.yml"
certs="$DIR/docker/setup/containers/nginx/install_certs_in_host.sh"

domain="$1"

if [[ -z "$domain" ]]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

sed -i "s/test.dev/$domain/g" $compose
sed -i "s/test.dev/$domain/g" $certs

echo "generating ssl certificates"

"$DIR/docker/setup/containers/nginx/install_certs_in_host.sh" "$domain"

echo "You have to update /etc/hosts with: '127.0.0.1 $domain'"
echo ""
read -p "Do you want me to do it for you? (y|n): " response

if [[ $response = "yes" || $response = "y" ]]; then
    echo "127.0.0.1 $domain" | sudo tee -a /etc/hosts > /dev/null
fi

echo ""
echo "Everything was setup for $domain, you can build and lift your container"
echo ""
echo "./docker/build.sh"
echo "./docker/up.sh [optional args such as: -d]"
