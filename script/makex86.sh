path=$(pwd $1)
path=$(echo $path"/"$1)

echo "alias $2=\"muvm -- '$path'\"" >> ~/.zshrc