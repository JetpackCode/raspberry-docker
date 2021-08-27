FROM debian
RUN apt-get update
RUN apt-get install build-essential openssl libssl-dev wget iptables -y --no-install-recommends --no-install-suggests

RUN cd /tmp ;\
    wget http://www.squid-cache.org/Versions/v4/squid-4.13.tar.gz -O squid.tar.gz ;\
    tar -xf squid.tar.gz ;\
    rm -rf squid.tar.gz ;\
    mv squid-4.13 squid ;\

    cd /tmp/squid ;\
    ./configure --with-openssl --enable-ssl-crtd ;\
    make -j 3 ;\
    make install ;\
    
    cd / ;\
    rm -rf /tmp/squid

RUN chmod -R 777 /usr/local/squid

RUN mkdir /usr/local/squid/ssl_cert ;\
    cd /usr/local/squid/ssl_cert ;\
    openssl req -new -newkey rsa:2048 -sha256 -days 1826 -nodes -x509 -keyout proxy.pem -out proxy.pem \
        -subj "/C=AT/ST=State/L=Locality/O=Organization/CN=CommonName"

RUN /usr/local/squid/libexec/security_file_certgen -c -s /usr/local/squid/var/cache/squid/ssl_db -M 4MB

COPY entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT entrypoint.sh
