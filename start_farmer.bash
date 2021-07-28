#!/bin/bash

cd ~/chia-blockchain
. ./activate
chia start farmer
deactivate

cd ~/flax-blockchain
. ./activate
flax start farmer
deactivate

cd ~/chaingreen-blockchain
. ./activate
chaingreen start farmer
deactivate

cd ~/silicoin-blockchain
. ./activate
silicoin start farmer
deactivate
