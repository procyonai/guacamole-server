#!/bin/sh

# while true copy /etc/procyon/hosts to /etc/hosts
while true; do
    cat /etc/procyon/hosts > /etc/hosts
    sleep 5
done