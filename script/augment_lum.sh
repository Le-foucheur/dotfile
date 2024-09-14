#!/bin/sh
#augmente la luminosité de arg%, 10% si non spécifié
#retourne le % de luminosité en fin de commande

max=$(cat /sys/class/backlight/apple-panel-bl/subsystem/apple-panel-bl/max_brightness)
if [ -n "$1" ]
then
	augment=$1
else
	augment=10
fi
next=$(expr $(cat /sys/class/backlight/apple-panel-bl/subsystem/apple-panel-bl/brightness) + $max '*' "$augment" '/' 100)
if [ -z "$next" ]
then
	exit 1
fi
if [ $next -gt $max ]
then
	next=$max
fi	
echo $next > /sys/class/backlight/apple-panel-bl/subsystem/apple-panel-bl/brightness
echo $(expr $next "*" 100 "/" $max)
