FROM ubuntu:xenial
RUN apt-get update && \
  apt-get -y install wget curl build-essential

RUN cd /tmp &&\
  curl http://download.redis.io/redis-stable.tar.gz | tar xz &&\
  make -C redis-stable &&\
  cp redis-stable/src/redis-cli /usr/local/bin &&\
  rm -rf /tmp/redis-stable

ADD docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]
