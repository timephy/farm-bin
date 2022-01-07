#!/bin/bash

source ~/farm-bin/color.bash

cd ~
echo -e "${BLUE}$ git clone chia${NC}"
git clone https://github.com/Chia-Network/chia-blockchain.git -b latest --recurse-submodules
cd chia-blockchain
echo -e "${BLUE}$ sh install.sh${NC}"
sh install.sh
. ./activate
echo -e "${BLUE}$ chia init${NC}"
chia init
# echo -e "${BLUE}$ chia keys add -f ~/mnemonic${NC}"
# chia keys add -f ~/mnemonic
deactivate
echo

cd ~
echo -e "${BLUE}$ git clone flax${NC}"
git clone https://github.com/Flax-Network/flax-blockchain.git -b latest --recurse-submodules
cd ~/flax-blockchain
echo -e "${BLUE}$ sh install.sh${NC}"
sh install.sh
. ./activate
echo -e "${BLUE}$ flax init${NC}"
flax init
# echo -e "${BLUE}$ flax keys add -f ~/mnemonic${NC}"
# flax keys add -f ~/mnemonic
deactivate
echo

# cd ~
# echo -e "${BLUE}$ git clone chaingreen${NC}"
# git clone https://github.com/ChainGreenOrg/chaingreen-blockchain.git -b main --recurse-submodules
# cd chaingreen-blockchain
# echo -e "${BLUE}$ sh install.sh${NC}"
# sh install.sh
# . ./activate
# echo -e "${BLUE}$ chaingreen init${NC}"
# chaingreen init
# # echo -e "${BLUE}$ chaingreen keys add -f ~/mnemonic${NC}"
# # chaingreen keys add -f ~/mnemonic
# deactivate
# echo

cd ~
echo -e "${BLUE}$ git clone silicoin${NC}"
git clone https://github.com/silicoin-network/silicoin-blockchain.git -b main --recurse-submodules
cd silicoin-blockchain
echo -e "${BLUE}$ sh install.sh${NC}"
sh install.sh
. ./activate
echo -e "${BLUE}$ silicoin init${NC}"
silicoin init
# echo -e "${BLUE}$ silicoin keys add -f ~/mnemonic${NC}"
# silicoin keys add -f ~/mnemonic
deactivate
echo

# cd ~
# echo -e "${BLUE}$ git clone chives${NC}"
# git clone https://github.com/HiveProject2021/chives-blockchain.git -b main --recurse-submodules
# cd chives-blockchain
# echo -e "${BLUE}$ sh install.sh${NC}"
# sh install.sh
# . ./activate
# echo -e "${BLUE}$ chives init${NC}"
# chives init
# # echo -e "${BLUE}$ silicoin keys add -f ~/mnemonic${NC}"
# # silicoin keys add -f ~/mnemonic
# deactivate
# echo

cd ~
echo -e "${BLUE}$ git clone hddcoin${NC}"
git clone https://github.com/HDDcoin-Network/hddcoin-blockchain.git -b main --recurse-submodules
cd hddcoin-blockchain
echo -e "${BLUE}$ sh install.sh${NC}"
sh install.sh
. ./activate
echo -e "${BLUE}$ hddcoin init${NC}"
hddcoin init
# echo -e "${BLUE}$ silicoin keys add -f ~/mnemonic${NC}"
# silicoin keys add -f ~/mnemonic
deactivate
echo

cd ~
echo -e "${BLUE}$ git clone staicoin${NC}"
git clone https://github.com/STATION-I/staicoin-blockchain.git -b main --recurse-submodules
cd staicoin-blockchain
echo -e "${BLUE}$ sh install.sh${NC}"
sh install.sh
. ./activate
echo -e "${BLUE}$ staicoin init${NC}"
staicoin init
# echo -e "${BLUE}$ silicoin keys add -f ~/mnemonic${NC}"
# silicoin keys add -f ~/mnemonic
deactivate
echo

# cd ~
# echo -e "${BLUE}$ git clone flora${NC}"
# git clone https://github.com/Flora-Network/flora-blockchain -b main --recurse-submodules
# cd flora-blockchain
# echo -e "${BLUE}$ sh install.sh${NC}"
# sh install.sh
# . ./activate
# echo -e "${BLUE}$ flora init${NC}"
# flora init
# # echo -e "${BLUE}$ silicoin keys add -f ~/mnemonic${NC}"
# # silicoin keys add -f ~/mnemonic
# deactivate
# echo

cd ~
echo -e "${BLUE}$ git clone greendoge${NC}"
git clone https://github.com/GreenDoge-Network/greendoge-blockchain -b main --recurse-submodules
cd greendoge-blockchain
echo -e "${BLUE}$ sh install.sh${NC}"
sh install.sh
. ./activate
echo -e "${BLUE}$ greendoge init${NC}"
greendoge init
# echo -e "${BLUE}$ silicoin keys add -f ~/mnemonic${NC}"
# silicoin keys add -f ~/mnemonic
deactivate
echo



# Switch log level to INFO in ~/.COIN/mainnet/config/config.yaml
