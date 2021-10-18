#!/bin/bash

source ~/farm-bin/data.bash
source ~/farm-bin/functions.bash

cd $ROOT

for coin in $COINS; do
    rsync -r $REMOTE_USER@$REMOTE:$REMOTE_ROOT/.$coin/mainnet/config/ssl/ca .
    coin $coin init -c ca
    rm -rf ca
done

coins configure --set-farmer-peer $REMOTE:8447
coins init --fix-ssl-permissions
