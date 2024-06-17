#!/bin/sh

cp -f /etc/procyon-tmp/krb5.conf /etc/procyon/krb5.conf
rm -f /etc/krb5.conf
ln -s /etc/procyon/krb5.conf /etc/krb5.conf
cp -f /etc/hosts /etc/procyon/hosts

nohup sh -c /etc/procyon-tmp/copy_hosts.sh &

su - guacd

exec "$@"