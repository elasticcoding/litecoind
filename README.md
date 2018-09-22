# litecoind
This guide will help you that, How to place litecoind at system boot.
1) download the litecoin core form the official website.
2) extract the core in a directory.
3) copy the litecoind and litecoin-cli from litecoin.x.x.x/bin to /usr/bin/
4) create a configuration directory in /etc/litecoind/litecoin.conf  and copy pest the configuration.
5) create a system file in /lib/systemd/system/litecoin.service from the litecoin.service
6) create a system user in the system with the uid and gid less then 1000 for systemd os and home directory is /var/lib/litecoin
   make sure that they have the  permission is like user=litecoin group=litecoin and shell will be /bin/false
7) download the litecoind.service from here.
8) That is it thanks.
