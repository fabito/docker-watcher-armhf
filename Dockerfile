FROM lsiobase/alpine.armhf:3.6

MAINTAINER fabito

# install build packages
RUN \
 apk add --no-cache --virtual=build-dependencies \
              musl \
              build-base \
              python3 \
              python3-dev \
              bash \
              git \
  && pip3.5 install --upgrade pip \
  && rm /var/cache/apk/*

# add local files
COPY root/ /

# ports and volumes
EXPOSE 9090
VOLUME /config /downloads /movies
