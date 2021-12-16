. ~/$1-blockchain/activate

echo -e "$ $1 stop all -d$"
$1 stop all -d
echo -e "$ pkill -9 $1$"
pkill -9 $1
echo -e "$ $1 start $2$"
$1 start $2

deactivate
