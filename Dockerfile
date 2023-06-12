FROM alpine:latest
ENV FR24_VERSION 1.0.34-0

RUN wget https://repo-feed.flightradar24.com/linux_x86_64_binaries/fr24feed_${FR24_VERSION}_amd64.tgz &&\
 tar xzf fr24feed_${FR24_VERSION}_amd64.tgz -C / &&\
 rm fr24feed_${FR24_VERSION}_amd64.tgz

ADD fr24feed.ini /etc/fr24feed.ini

EXPOSE 8754
ENTRYPOINT ["/fr24feed_amd64/fr24feed"]
