#!/bin/sh
echo -n "wifi: "
read wifi
/usr/bin/nmcli --ask dev wifi connect $wifi
