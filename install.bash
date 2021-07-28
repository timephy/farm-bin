#!/bin/bash

cd ~
echo Git clone chia
git clone https://github.com/Chia-Network/chia-blockchain.git -b latest --recurse-submodules
cd chia-blockchain
echo $ sh install.sh
sh install.sh
. ./activate
echo $ chia init
chia init
echo $ chia keys add -f ~/mnemonic
chia keys add -f ~/mnemonic
deactivate
echo

cd ~
echo Git clone flax
git clone https://github.com/Flax-Network/flax-blockchain.git -b latest --recurse-submodules
cd ~/flax-blockchain
echo $ sh install.sh
sh install.sh
. ./activate
echo $ flax init
flax init
echo $ flax keys add -f ~/mnemonic
flax keys add -f ~/mnemonic
deactivate
echo

cd ~
echo Git clone chaingreen
git clone https://github.com/ChainGreenOrg/chaingreen-blockchain.git -b main --recurse-submodules
cd chaingreen-blockchain
echo $ sh install.sh
sh install.sh
. ./activate
echo $ chaingreen init
chaingreen init
echo $ chaingreen keys add -f ~/mnemonic
chaingreen keys add -f ~/mnemonic
deactivate
echo

cd ~
echo Git clone silicoin
git clone https://github.com/silicoin-network/silicoin-blockchain.git -b main --recurse-submodules
cd silicoin-blockchain
echo $ sh install.sh
sh install.sh
. ./activate
echo $ silicoin init
silicoin init
echo $ silicoin keys add -f ~/mnemonic
silicoin keys add -f ~/mnemonic
deactivate
echo



# Switch log level to INFO in ~/.COIN/mainnet/config/config.yaml
