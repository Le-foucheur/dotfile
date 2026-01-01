#!/bin/sh

text=$(date +' %H:%M:%S | %d %a %Y ')
tooltip=$(cal)
tooltip=$(echo ${tooltip//$'\n'/\\\\n})

echo -e "{\"text\":\""$text"\", \"tooltip\":\""$tooltip"\"}}"