FROM lsiobase/alpine.armhf:3.6

MAINTAINER fabito

RUN apk add --update \
              musl \
              build-base \
              python3 \
              python3-dev \
              bash \
              git \
  && pip3.5 install --upgrade pip \
  && rm /var/cache/apk/*

# make some useful symlinks that are expected to exist
RUN cd /usr/bin \
  && ln -sf easy_install-3.5 easy_install \
  && ln -sf idle3.5 idle \
  && ln -sf pydoc3.5 pydoc \
  && ln -sf python3.5 python \
  && ln -sf python-config3.5 python-config \
  && ln -sf pip3.5 pip

# add local files
COPY root/ /

# ports and volumes
EXPOSE 9090
VOLUME /config /downloads /movies
