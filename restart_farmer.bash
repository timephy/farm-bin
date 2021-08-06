#!/bin/bash
source ~/farm-bin/color.bash

cd ~/$1-blockchain
. ./activate

echo -e "${BLUE}$ $1 stop all -d${NC}"
$1 stop all -d
echo -e "${BLUE}$ pkill -9 $1${NC}"
pkill -9 $1
echo -e "${BLUE}$ $1 start farmer${NC}"
$1 start farmer

deactivate