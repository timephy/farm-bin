#!/bin/bash

cd ~/chia-blockchain
. ./activate
CHIA="<b>Chia</b>\n\n$(chia farm summary)" # \n\n$(chia wallet show)
deactivate

cd ~/flax-blockchain
. ./activate
FLAX="<b>Flax</b>\n\n$(flax farm summary)" # \n\n$(flax wallet show)
deactivate

cd ~/chaingreen-blockchain
. ./activate
CHAINGREEN="<b>Chaingreen</b>\n\n$(chaingreen farm summary)" # \n\n$(chaingreen wallet show)
deactivate

cd ~/silicoin-blockchain
. ./activate
SILICOIN="<b>Flax</b>\n\n$(silicoin farm summary)" # \n\n$(silicoin wallet show)
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
