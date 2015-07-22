#!/bin/bash -e

export VIRTUAL_DOMAIN=${VIRTUAL_DOMAIN:-${HOSTNAME}}
export VIRTUAL_PORTS=${VIRTUAL_PORTS:-80}

nginx -c /etc/nginx/nginx.conf

/usr/bin/confd $@
