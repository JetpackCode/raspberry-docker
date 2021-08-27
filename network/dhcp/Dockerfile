FROM debian
RUN apt-get update
RUN apt-get install isc-dhcp-server -y --no-install-recommends --no-install-suggests
RUN touch /var/lib/dhcp/dhcpd.leases
ENTRYPOINT dhcpd -4 -f
