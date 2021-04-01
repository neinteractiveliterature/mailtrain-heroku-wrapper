#!/bin/bash

/app/start-nginx.sh
/bin/bash /app/docker-entrypoint.sh
