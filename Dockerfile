FROM alpine:latest
ENV FR24_VERSION 1.0.34-0
RUN \
 wget https://repo-feed.flightradar24.com/linux_x86_64_binaries/fr24feed_${FR24_VERSION}_amd64.tgz &&\
 tar xzf fr24feed_${FR24_VERSION}_amd64.tgz &&\
 export LD_LIBRARY_PATH=/usr/local/lib64/:$LD_LIBRARY_PATH
ADD fr24feed.ini /etc/fr24feed.ini
WORKDIR fr24feed_amd64
EXPOSE 8754
ENTRYPOINT ["./fr24feed"]