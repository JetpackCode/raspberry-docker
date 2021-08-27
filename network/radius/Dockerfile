FROM debian
RUN apt-get update
RUN apt-get install freeradius -y --no-install-recommends --no-install-suggests
RUN usermod -u 1000 freerad
ENTRYPOINT freeradius -f
