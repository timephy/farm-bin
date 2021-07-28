#!/bin/bash

source ~/farm-bin/color.bash

cd ~/chia-blockchain
. ./activate
echo -e "${BLUE}$ chia start farmer${CL}"
chia start farmer
deactivate

cd ~/flax-blockchain
. ./activate
echo -e "${BLUE}$ flax start farmer${CL}"
flax start farmer
deactivate

cd ~/chaingreen-blockchain
. ./activate
echo -e "${BLUE}$ chaingreen start farmer${CL}"
chaingreen start farmer
deactivate

cd ~/silicoin-blockchain
. ./activate
echo -e "${BLUE}$ silicoin start farmer${CL}"
silicoin start farmer
deactivate
