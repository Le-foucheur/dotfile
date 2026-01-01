bg=$(find ~/wallpaper/ -type f,l | shuf -n 1)

swaylock --effect-blur 10x10 --font-size 35 --font Monocraft -f -F -l --clock -i $bg
