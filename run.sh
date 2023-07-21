#!/usr/bin/env bash

# exit
set -eo pipefail

docker build -t caddy:custom .
docker run --rm -v ${PWD}/Caddyfile:/etc/caddy/Caddyfile -p 80:80 caddy:custom
