#!/bin/bash

source ~/farm-bin/color.bash

cd ~/chia-blockchain
. ./activate
echo -e "${BLUE}$ chia stop all -d${CL}"
chia stop all -d
deactivate

cd ~/flax-blockchain
. ./activate
echo -e "${BLUE}$ flax stop all -d${CL}"
flax stop all -d
deactivate

cd ~/chaingreen-blockchain
. ./activate
echo -e "${BLUE}$ chaingreen stop all -d${CL}"
chaingreen stop all -d
deactivate

cd ~/silicoin-blockchain
. ./activate
echo -e "${BLUE}$ silicoin stop all -d${CL}"
silicoin stop all -d
deactivate
