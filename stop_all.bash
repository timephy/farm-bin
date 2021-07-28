#!/bin/bash

cd ~/chia-blockchain
. ./activate
chia stop all -d
deactivate

cd ~/flax-blockchain
. ./activate
flax stop all -d
deactivate

cd ~/chaingreen-blockchain
. ./activate
chaingreen stop all -d
deactivate

cd ~/silicoin-blockchain
. ./activate
silicoin stop all -d
deactivate
