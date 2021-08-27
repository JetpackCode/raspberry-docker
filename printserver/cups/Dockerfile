FROM debian
RUN apt-get update
COPY passwd group shadow /etc/
RUN apt-get install cups -y --no-install-recommends --no-install-suggests
RUN usermod -aG lpadmin pi
ENTRYPOINT cupsd -f
