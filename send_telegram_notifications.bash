#!/bin/bash

cd ~/chia-blockchain
. ./activate
CHIA="<b>Chia</b>\n$(chia farm summary)"
deactivate

cd ~/flax-blockchain
. ./activate
FLAX="<b>Flax</b>\n$(flax farm summary)"
deactivate

cd ~/chaingreen-blockchain
. ./activate
CHAINGREEN="<b>Chaingreen</b>\n$(chaingreen farm summary)"
deactivate

cd ~/silicoin-blockchain
. ./activate
SILICOIN="<b>Silicoin</b>\n$(silicoin farm summary)"
deactivate

CHIA=$(python3 -c "from urllib.parse import quote; print(quote('''$CHIA'''))")
FLAX=$(python3 -c "from urllib.parse import quote; print(quote('''$FLAX'''))")
CHAINGREEN=$(python3 -c "from urllib.parse import quote; print(quote('''$CHAINGREEN'''))")
SILICOIN=$(python3 -c "from urllib.parse import quote; print(quote('''$SILICOIN'''))")

source ~/farm-bin/.env

curl -X POST "https://api.telegram.org/bot$TELEGRAM_TOKEN/sendMessage?chat_id=$TELEGRAM_CHAT_ID&parse_mode=html&text=$CHIA"
curl -X POST "https://api.telegram.org/bot$TELEGRAM_TOKEN/sendMessage?chat_id=$TELEGRAM_CHAT_ID&parse_mode=html&text=$FLAX"
curl -X POST "https://api.telegram.org/bot$TELEGRAM_TOKEN/sendMessage?chat_id=$TELEGRAM_CHAT_ID&parse_mode=html&text=$CHAINGREEN"
curl -X POST "https://api.telegram.org/bot$TELEGRAM_TOKEN/sendMessage?chat_id=$TELEGRAM_CHAT_ID&parse_mode=html&text=$SILICOIN"
