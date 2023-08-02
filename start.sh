#!/bin/bash

set -a
source docker-compose.env
docker compose up -d --remove-orphans


docker exec  protonmail-bridge-vpn bash -c "socat TCP-LISTEN:25,fork TCP:127.0.0.1:1025 &"
docker exec  protonmail-bridge-vpn bash -c "socat TCP-LISTEN:143,fork TCP:127.0.0.1:1143 &"

docker exec  protonmail-bridge-nextcloud bash -c "socat TCP-LISTEN:25,fork TCP:127.0.0.1:1025 &"
docker exec  protonmail-bridge-nextcloud bash -c "socat TCP-LISTEN:143,fork TCP:127.0.0.1:1143 &"
