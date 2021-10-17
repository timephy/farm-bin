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

start() {
    coin $1 start $2 -r
}

start-all() {
    coins start $1 -r
}

restart() {
    echo -e "${BLUE}$ $1 stop all -d${NC}"
    coin $1 stop all -d
    echo -e "${BLUE}$ pkill -9 $1${NC}"
    pkill -9 $1
    echo -e "${BLUE}$ $1 start $2${NC}"
    coin $1 start $2
}
