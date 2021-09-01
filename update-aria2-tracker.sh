#!/bin/bash
export http_proxy=http://127.0.0.1:1081 https_proxy=http://127.0.0.1:1081
ARIA2_CONF="/etc/aria2/aria2.conf"
list=`wget -qO- https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_all.txt|awk NF|sed ":a;N;s/\n/,/g;ta"`
if [ -z "`grep "bt-tracker" $ARIA2_CONF`" ]; then
    sed -i '$a bt-tracker='${list} $ARIA2_CONF
    echo "add trackers..."
else
    sed -i "s@bt-tracker=.*@bt-tracker=$list@g" $ARIA2_CONF
    echo "update trackers..."
fi
echo "restart aria2 service"
systemctl restart aria2.service
