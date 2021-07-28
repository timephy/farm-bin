#!/bin/bash

sudo mkdir -p /media/plots
cd /media/plots
sudo mkdir 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32
sudo mkdir nas


for d in /media/plots/*; do
  if [ -d "$d" ]; then
    echo "$d"
    ~/chia-blockchain/venv/bin/chia plots add -d $d
    ~/flax-blockchain/venv/bin/flax plots add -d $d
    ~/chaingreen-blockchain/venv/bin/chaingreen plots add -d $d
    ~/silicoin-blockchain/venv/bin/silicoin plots add -d $d
  fi
done
