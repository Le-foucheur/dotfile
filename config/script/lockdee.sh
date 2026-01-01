while true;
do
    rien=$(echo $(ps -A | grep swayidle))

    if [[ $(ps -A | grep deezer-enhanced) != "" ]]; then
        class=$(playerctl metadata --player=Deezer --format '{{lc(status)}}')
    else
        class="stopped"
    fi
    if [[ $class == "playing" ]]&&[[ $rien != "" ]]; then
        killall swayidle
    else
        if [[ $rien == "" ]]; then
            swayidle -w \
                timeout 269 '~/script/dim_lum.sh 0 > /run/user/$UID/lum.txt'\
                timeout 270 '~/script/dim_lum.sh 100'\
                    resume '~/script/augment_lum.sh $(( $(cat /run/user/$UID/lum.txt) + 1 ))'\
                timeout 300 '~/script/Clock.sh'
        fi
    fi
done
