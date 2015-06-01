#!/bin/bash

if [ ! -f /etc/no-ip/noip2.conf ]; then
  echo "Could not find /etc/no-ip/noip2.conf"
  exit 1
fi

/noip/noip2 -c /etc/no-ip/noip2.conf

# Since the above launches in the background...
while true
do
  sleep 3600
done
