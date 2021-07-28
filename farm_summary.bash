#!/bin/bash

source ~/farm-bin/color.bash

echo -e "${BLUE}$ chia farm summary${NC}"
~/chia-blockchain/venv/bin/chia farm summary
echo

echo -e "${BLUE}$ flax farm summary${NC}"
~/flax-blockchain/venv/bin/flax farm summary
echo

echo -e "${BLUE}$ chaingreen farm summary${NC}"
~/chaingreen-blockchain/venv/bin/chaingreen farm summary
echo

echo -e "${BLUE}$ silicoin farm summary${NC}"
~/silicoin-blockchain/venv/bin/silicoin farm summary
echo
