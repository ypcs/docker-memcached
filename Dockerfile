FROM ypcs/debian:stretch

RUN \
    /usr/local/sbin/docker-upgrade && \
    apt-get --assume-yes install \
        memcached && \
    /usr/local/sbin/docker-cleanup

CMD ["/usr/share/memcached/scripts/start-memcached", "/etc/memcached.conf"]
