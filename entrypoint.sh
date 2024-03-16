#!/bin/sh

cat /etc/fr24feed.ini.tmpl | envsubst > /etc/fr24feed.ini
exec /fr24feed_amd64/fr24feed