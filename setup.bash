#!/bin/bash

source ~/farm-bin/data.bash
source ~/farm-bin/functions.bash

coins configure --log-level $LOG_LEVEL
coins init --fix-ssl-permissions

for d in $MOUNTS_DIR/*; do
  if [ -d "$d" ]; then
    echo "$d"
    coins plots add -d $d
  fi
done
