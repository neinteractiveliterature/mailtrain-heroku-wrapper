#!/bin/bash

/app/start-nginx.sh
redis-server --daemonize yes
export REDIS_HOST=localhost
/bin/bash /app/docker-entrypoint.sh
