FROM debian
RUN apt-get update
RUN apt-get install samba -y --no-install-recommends --no-install-suggests
RUN useradd pi
ENTRYPOINT cp /tmp/passdb.tdb /var/lib/samba/private && smbd -F
