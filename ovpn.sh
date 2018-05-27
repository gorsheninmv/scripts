#!/bin/bash

in=$(find ~/vpnconfigs/*.ovpn)
arr_in=(${in//;/ })

for i in ${!arr_in[@]}
do
	echo "$i ${arr_in[i]}"
done

echo "Please eneter the number of config file:"
idx=""
read idx
sudo openvpn --config ${arr_in[$idx]}
