#!/bin/bash

source ~/farm-bin/color.bash

echo -e "${BLUE}$ chia show -s${NC}"
~/chia-blockchain/venv/bin/chia show -s
echo

echo -e "${BLUE}$ flax show -s${NC}"
~/flax-blockchain/venv/bin/flax show -s
echo

echo -e "${BLUE}$ chaingreen show -s${NC}"
~/chaingreen-blockchain/venv/bin/chaingreen show -s
echo

echo -e "${BLUE}$ silicoin show -s${NC}"
~/silicoin-blockchain/venv/bin/silicoin show -s
echo
