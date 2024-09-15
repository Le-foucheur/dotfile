#!/bin/sh

class=$(playerctl metadata --player=Deezer --format '{{lc(status)}}')
icon=""

if [[ $class == "playing" ]]; then
  if [[ ${#info} -ge 30 ]]; then
    info=$(playerctl metadata --player=Deezer --format '{{title}}')
    info=$(echo ${info//\"/\\\"}) # Escape quote with \"
  else
    info=$(playerctl metadata --player=Deezer --format '{{title}} - {{artist}}')
    info=$(echo ${info//\"/\\\"}) # Escape quote with \"
  fi
  if [[ ${#info} -ge 33 ]]; then
    info=$(echo $info | cut -c1-30)"..."
  fi
  tooltip=$(playerctl metadata --format "{{duration(position)}} / {{duration(mpris:length)}}")
  text=$info" "$icon
elif [[ $class == "paused" ]]; then
  text=$icon
elif [[ $class == "stopped" ]]; then
  text=""
fi

echo -e "{\"text\":\""$text"\", \"tooltip\":\""$tooltip"\"}, \"class\":\""$class"\"}"