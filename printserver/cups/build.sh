#!/bin/bash
sudo cp /etc/passwd /etc/shadow /etc/group .
sudo chown pi:pi passwd shadow group
chmod 400 passwd shadow group
docker-compose build --no-cache cups
rm -f passwd shadow group
