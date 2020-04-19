
declare -A sounds
sounds[dog]="bark"
sounds[d]="ba"
sounds[de]="rk"
sounds[f]="k"
sounds[g]="bak"
sounds[g]="bakkkkkk"


echo "all" ${sounds[g]}
echo "all" ${sounds[@]}
echo "key" ${!sounds[@]}
echo "no " ${#sounds[@]}
unset sounds[dog]
echo "all" ${sounds[@]}
echo "no " ${#sounds[@]}
