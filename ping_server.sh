#!/bin/sh

ICO=

SRV=`ping 192.168.0.52 -c 1 -w 1 \
	| sed '2q;d' \
	| awk 'NF>1{print $NF}'`

if [[ $SRV == ms ]]; then
	echo "%{F#0f0}${ICO} "
else
	echo "%{F#f00}${ICO} "
fi
