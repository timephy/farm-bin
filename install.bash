#!/bin/bash

cd ~
git clone https://github.com/Chia-Network/chia-blockchain.git -b latest --recurse-submodules
cd chia-blockchain
sh install.sh
. ./activate
chia init
chia keys add -f ~/mnemonic
deactivate

cd ~
git clone https://github.com/Flax-Network/flax-blockchain.git -b latest --recurse-submodules
cd ~/flax-blockchain
sh install.sh
. ./activate
flax init
flax keys add -f ~/mnemonic
deactivate

cd ~
git clone https://github.com/ChainGreenOrg/chaingreen-blockchain.git -b latest --recurse-submodules
cd chaingreen-blockchain
sh install.sh
. ./activate
chaingreen init
chaingreen keys add -f ~/mnemonic
deactivate

cd ~
git clone https://github.com/silicoin-network/silicoin-blockchain.git -b latest --recurse-submodules
cd silicoin-blockchain
sh install.sh
. ./activate
silicoin init
silicoin keys add -f ~/mnemonic
deactivate



# Switch log level to INFO in ~/.COIN/mainnet/config/config.yaml
