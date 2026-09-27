#!/bin/sh
set -eu

: "${ADMIN_BASIC_AUTH_USER:?ADMIN_BASIC_AUTH_USER must be set}"
: "${ADMIN_BASIC_AUTH_PASSWORD:?ADMIN_BASIC_AUTH_PASSWORD must be set}"

install -d -m 0700 /etc/nginx/auth
htpasswd -Bbn "$ADMIN_BASIC_AUTH_USER" "$ADMIN_BASIC_AUTH_PASSWORD" > /etc/nginx/auth/admin.htpasswd
chmod 0600 /etc/nginx/auth/admin.htpasswd
