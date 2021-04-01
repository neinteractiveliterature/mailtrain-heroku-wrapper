#!/bin/bash

envsubst '$PORT$MAILTRAIN_TRUSTED_DOMAIN$MAILTRAIN_SANDBOX_DOMAIN$MAILTRAIN_PUBLIC_DOMAIN' \
  </etc/nginx/templates/mailtrain.conf.template >/etc/nginx/conf.d/mailtrain.conf
nginx

