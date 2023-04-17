#!/bin/sh

/usr/sbin/keepalived -D -f /etc/keepalived/keepalived.conf
nginx -g "daemon off;"
