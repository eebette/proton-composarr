#!/bin/bash

set -a
source docker-compose.env
docker compose logs -f

