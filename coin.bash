#!/bin/bash

source ~/farm-bin/color.bash

echo -e "${BLUE}$ chia $@${NC}"
~/chia-blockchain/venv/bin/chia $@
echo

echo -e "${BLUE}$ flax $@${NC}"
~/flax-blockchain/venv/bin/flax $@
echo

echo -e "${BLUE}$ chaingreen $@${NC}"
~/chaingreen-blockchain/venv/bin/chaingreen $@
echo

echo -e "${BLUE}$ silicoin $@${NC}"
~/silicoin-blockchain/venv/bin/silicoin $@
echo
