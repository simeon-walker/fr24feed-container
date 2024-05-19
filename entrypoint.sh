#!/bin/sh

cat /etc/fr24feed.ini.tmpl | envsubst > /etc/fr24feed.ini
# this is silly, but it works
(sleep 3 ; kill 7) &
exec /fr24feed_amd64/fr24feed
