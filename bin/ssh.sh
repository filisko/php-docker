#!/bin/bash
set -o nounset
set -o errexit

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd "$DIR/../docker/setup"

if [[ -z "$@" ]]; then
    docker compose exec php /bin/bash
else
    docker compose exec php /bin/bash -c "$@"
fi
