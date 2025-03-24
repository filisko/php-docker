#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

mkcert  -cert-file "$DIR/certs/fullchain.pem" -key-file "$DIR/certs/privkey.pem" "*.framework.dev" "framework.dev"
