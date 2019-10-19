#!/bin/sh

echo "Starting Syslog Server"
/etc/init.d/rsyslog restart
echo "Starting DNS Server"
/usr/sbin/named -c /etc/bind/named.conf -f
