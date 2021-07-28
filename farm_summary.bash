#!/bin/bash

source ~/farm-bin/color.bash

echo -e "${BLUE}$ chia farm summary${CL}"
~/chia-blockchain/venv/bin/chia farm summary
echo

echo -e "${BLUE}$ flax farm summary${CL}"
~/flax-blockchain/venv/bin/flax farm summary
echo

echo -e "${BLUE}$ chaingreen farm summary${CL}"
~/chaingreen-blockchain/venv/bin/chaingreen farm summary
echo

echo -e "${BLUE}$ silicoin farm summary${CL}"
~/silicoin-blockchain/venv/bin/silicoin farm summary
echo
