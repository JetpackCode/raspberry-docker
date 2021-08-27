FROM debian
RUN apt-get update
RUN apt-get install nginx libnginx-mod-rtmp -y --no-install-recommends --no-install-suggests
ENTRYPOINT nginx -g 'daemon off;'
