FROM php-image
RUN rm -rf /var/lib/apt/lists/* && apt-get update

# ssh and tmux
RUN apt-get install openssh-server tmux -y --no-install-recommends --no-install-suggests
RUN mkdir /run/sshd

# build-essential and git
RUN apt-get install build-essential git -y --no-install-recommends --no-install-suggests

# Composer
RUN apt-get install wget -y --no-install-recommends --no-install-suggests
RUN wget -O composer-setup.php https://getcomposer.org/installer
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer
RUN rm composer-setup.php

# NPM
RUN apt-get install curl -y --no-install-recommends --no-install-suggests
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install nodejs -y --no-install-recommends --no-install-suggests
RUN npm install npm@latest -g

ENTRYPOINT /usr/sbin/sshd -4 -D
