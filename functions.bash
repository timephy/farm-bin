source ~/farm-bin/color.bash
source ~/farm-bin/data.bash

coin() {
    # cd ~/$1-blockchain
    . ~/$1-blockchain/activate
    echo -e "${BLUE}$ $@ ${NC}"
    $@
    deactivate
}

coins() {
    for coin in $COINS; do
        coin $coin $@
    done
}

restart() {
    coin $1 stop all -d
    echo -e "${BLUE}$ pkill -9 $1${NC}"
    pkill -9 $1
    coin $1 start $2
}
