FROM alpine:latest
ENV FR24_VERSION 1.0.48-0

# https://repo-feed.flightradar24.com/linux_binaries/fr24feed_1.0.48-0_amd64.tgz

RUN apk add gettext
RUN wget https://repo-feed.flightradar24.com/linux_binaries/fr24feed_${FR24_VERSION}_amd64.tgz &&\
 tar xzf fr24feed_${FR24_VERSION}_amd64.tgz -C / &&\
 rm fr24feed_${FR24_VERSION}_amd64.tgz

ADD entrypoint.sh /entrypoint.sh
ADD fr24feed.ini.tmpl /etc/fr24feed.ini.tmpl

EXPOSE 8754
ENTRYPOINT ["/entrypoint.sh"]
