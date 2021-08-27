#!/bin/bash
iptables -t nat -I PREROUTING -p tcp -s 192.168.1.0/24 --dport 80 -j REDIRECT
iptables -t nat -I PREROUTING -p tcp -s 192.168.1.0/24 --dport 443 -j REDIRECT
iptables -I FORWARD -p udp -s 192.168.1.0/24 --dport 80 -j DROP
iptables -I FORWARD -p udp -s 192.168.1.0/24 --dport 443 -j DROP
/usr/local/squid/sbin/squid -N
