#!/bin/sh

ROOT_DIR=

if [ -f "/opt/etc/init.d/S51nfqws" ]; then
    ROOT_DIR=/opt
    /opt/etc/init.d/S51nfqws stop
elif [ -f "/etc/init.d/nfqws-keenetic" ]; then
    /etc/init.d/nfqws-keenetic stop
else
    /usr/bin/zapret.sh stop
fi

mkdir -p "$ROOT_DIR/tmp/nfqws-keenetic/strategy/zapret"
cd "$ROOT_DIR/tmp/nfqws-keenetic/strategy"

RELEASE_URL=`curl -s https://api.github.com/repos/bol-van/zapret/releases/latest | grep browser_download_url | grep 'embedded.tar.gz' | cut -d '"' -f 4`
BINARY=zapret.tar.gz
curl -SL# $RELEASE_URL -o $BINARY
tar -C zapret -xzf $BINARY && rm $BINARY
cd zapret/*/

./install_bin.sh
SECURE_DNS=0 FWTYPE=iptables SKIP_TPWS=1 ./blockcheck.sh

rm -rf "$ROOT_DIR/tmp/nfqws-keenetic/strategy"
echo -e "* NOTE: nfqws-keenetic is stopped. Start it manually if necessary! \n"
