FROM debian
RUN apt-get update
RUN apt-get install bind9 -y --no-install-recommends --no-install-suggests
ENTRYPOINT named -4 -f -u bind
