rm -r /home/jvj/wallpaper/
mkdir /home/jvj/wallpaper

######################
#                    #
#       Rarity       #
#                    #
######################

Total=100
nb_leg=1
legendary=1
nb_Rare=0
rare=10
nb_com=2
commun=$(( ( $Total - $legendary * $nb_leg - $rare * $nb_Rare) / $nb_com ))

######################
#                    #
#     Outer Wilds    #
#                    #
######################

#you destroy the fabirc of spacetime
for i in $(seq $legendary)
do
    if [[ $1 == "-d" ]];then
        echo "OuterWilds - fabicdeleted : $i"
    fi
    ln -s /home/jvj/wallpaperperm/OuterWilds/fabicdeleted.jpg /home/jvj/wallpaper/fabicdeleted_$i.jpg
done

#New space time
for i in $(seq $commun)
do
    if [[ $1 == "-d" ]];then
        echo "OuterWilds - NewSpaceTime : $i"
    fi
    ln -s /home/jvj/wallpaperperm/OuterWilds/NewSpaceTime.png /home/jvj/wallpaper/NewSpaceTime_$i.png 
done

#Solar system
for i in $(seq $commun)
do
    if [[ $1 == "-d" ]];then
        echo "OuterWilds - Solarsyi : $i"
    fi
    ln -s /home/jvj/wallpaperperm/OuterWilds/O_SolarSyi.jpg /home/jvj/wallpaper/O_SolarSyi_$i.jpg
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
—————————————————————————"
fi