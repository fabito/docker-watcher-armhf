FROM rcarmo/alpine-python:3.5-armhf
MAINTAINER fabito

# add local files
COPY root/ /

# ports and volumes
EXPOSE 9090
VOLUME /config /downloads /movies
