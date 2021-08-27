FROM debian
RUN apt-get update
RUN apt-get install php7.3 -y --no-install-recommends --no-install-suggests
RUN apt-get install openssl ca-certificates -y --no-install-recommends --no-install-suggests
RUN apt-get install -y --no-install-recommends --no-install-suggests \
                    php7.3-bcmath \
                    php7.3-ctype \
                    php7.3-fileinfo \
                    php7.3-json \
                    php7.3-mbstring \
                    php7.3-pdo \
                    php7.3-sqlite3 \
                    php7.3-tokenizer \
                    php7.3-xml \
                    php7.3-zip
