#!/bin/bash

BLUE='\033[0;34m'
NC='\033[0m' # No Color

cd ~
echo -e "${BLUE}$ git clone chia${CL}"
git clone https://github.com/Chia-Network/chia-blockchain.git -b latest --recurse-submodules
cd chia-blockchain
echo -e "${BLUE}$ sh install.sh${CL}"
sh install.sh
. ./activate
echo -e "${BLUE}$ chia init${CL}"
chia init
echo -e "${BLUE}$ chia keys add -f ~/mnemonic${CL}"
chia keys add -f ~/mnemonic
deactivate
echo

cd ~
echo -e "${BLUE}$ git clone flax${CL}"
git clone https://github.com/Flax-Network/flax-blockchain.git -b latest --recurse-submodules
cd ~/flax-blockchain
echo -e "${BLUE}$ sh install.sh${CL}"
sh install.sh
. ./activate
echo -e "${BLUE}$ flax init${CL}"
flax init
echo -e "${BLUE}$ flax keys add -f ~/mnemonic${CL}"
flax keys add -f ~/mnemonic
deactivate
echo

cd ~
echo -e "${BLUE}$ git clone chaingreen${CL}"
git clone https://github.com/ChainGreenOrg/chaingreen-blockchain.git -b main --recurse-submodules
cd chaingreen-blockchain
echo -e "${BLUE}$ sh install.sh${CL}"
sh install.sh
. ./activate
echo -e "${BLUE}$ chaingreen init${CL}"
chaingreen init
echo -e "${BLUE}$ chaingreen keys add -f ~/mnemonic${CL}"
chaingreen keys add -f ~/mnemonic
deactivate
echo

cd ~
echo -e "${BLUE}$ git clone silicoin${CL}"
git clone https://github.com/silicoin-network/silicoin-blockchain.git -b main --recurse-submodules
cd silicoin-blockchain
echo -e "${BLUE}$ sh install.sh${CL}"
sh install.sh
. ./activate
echo -e "${BLUE}$ silicoin init${CL}"
silicoin init
echo -e "${BLUE}$ silicoin keys add -f ~/mnemonic${CL}"
silicoin keys add -f ~/mnemonic
deactivate
echo



# Switch log level to INFO in ~/.COIN/mainnet/config/config.yaml
