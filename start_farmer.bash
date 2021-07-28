#!/bin/bash

source ~/farm-bin/color.bash

cd ~/chia-blockchain
. ./activate
echo -e "${BLUE}$ chia start farmer${NC}"
chia start farmer
deactivate

cd ~/flax-blockchain
. ./activate
echo -e "${BLUE}$ flax start farmer${NC}"
flax start farmer
deactivate

cd ~/chaingreen-blockchain
. ./activate
echo -e "${BLUE}$ chaingreen start farmer${NC}"
chaingreen start farmer
deactivate

cd ~/silicoin-blockchain
. ./activate
echo -e "${BLUE}$ silicoin start farmer${NC}"
silicoin start farmer
deactivate
