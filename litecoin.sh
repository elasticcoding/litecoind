#!/bin/bash
who=`whoami`
if [ $who != "root" ];then
echo "must run under root"
exit
else
echo "downloding Litecoin"
curl -o /tmp/litecoin.tar.gz https://download.litecoin.org/litecoin-0.16.3/linux/litecoin-0.16.3-x86_64-linux-gnu.tar.gz
cd /tmp
tar -xzf litecoin.tar.gz
cp litecoin-0.16.3/bin/litecoind /usr/bin/
cp litecoin-0.16.3/bin/litecoin-cli /usr/bin/
sudo addgroup --system litecoin
sudo adduser --system --home /var/lib/litecoin --ingroup litecoin litecoin
mkdir /etc/litecoin
touch /etc/litecoin/litecoin.conf

fi

