rm -r "/home/jvj/wallpaper/"
mkdir -p "/home/jvj/wallpaper"

######################
#                    #
#      Parametre     #
#                    #
######################

listLeg=("OuterWilds/fabicdeleted.jpg")
listrare=("minecraft/terralith-1.png")
listcomm=("OuterWilds/NewSpaceTime.png" "OuterWilds/O_SolarSyi.jpg")

Total=100
nb_leg=${#listLeg[@]}
legendary=1
nb_Rare=${#listrare[@]}
rare=10
nb_com=${#listcomm[@]}
commun=$(( ( $Total - $legendary * $nb_leg - $rare * $nb_Rare) / $nb_com ))

######################
#                    #
#  création symlink  #
#                    #
######################

#Legendaire
for j in "${listLeg[@]}"
do
    mkdir -p "/home/jvj/wallpaper/$(echo "$j" | rev | cut -d "/" -f 2- | rev)"
    for i in $(seq $legendary)
    do
        if [[ $1 == "-d" ]];then
            echo "$j : $i"
        fi
        ln -sf "/home/jvj/wallpaperperm/$j" "/home/jvj/wallpaper/$(echo $j | cut -d "." -f 1)_$i"
    done
done

#Rare
for j in "${listrare[@]}"
do
    mkdir -p "/home/jvj/wallpaper/$(echo "$j" | rev | cut -d "/" -f 2- | rev)"
    for i in $(seq $rare)
    do
        if [[ $1 == "-d" ]];then
            echo "$j : $i"
        fi
        ln -sf "/home/jvj/wallpaperperm/$j" "/home/jvj/wallpaper/$(echo $j | cut -d "." -f 1)_$i"
    done
done

#Commun
for j in "${listcomm[@]}"
do
    mkdir -p "/home/jvj/wallpaper/$(echo "$j" | rev | cut -d "/" -f 2- | rev)"
    for i in $(seq $commun)
    do
        if [[ $1 == "-d" ]];then
            echo "$j : $i"
        fi
        ln -sf "/home/jvj/wallpaperperm/$j" "/home/jvj/wallpaper/$(echo $j | cut -d "." -f 1)_$i"
    done
done

if [[ $1 == "-d" ]];then
echo "—————————————————————————
nombre de legendaire : $nb_leg
Rareté legendaire : $legendary
nombre de commun : $nb_Rare
Rareté commun : $rare
nombre de commun : $nb_com
Rareté commun : $commun
Total : $Total

liste legendaire : ${listLeg[@]}
liste Rare : ${listrare[@]}
liste Commun : ${listcomm[@]}
—————————————————————————"
fi
