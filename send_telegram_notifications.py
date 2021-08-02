#!/bin/python3
import subprocess
import requests

TELEGRAM_TOKEN = ''
TELEGRAM_CHAT_ID = ''

coins = ['chia', 'flax', 'chaingreen', 'silicoin']

# "https://api.telegram.org/bot$TELEGRAM_TOKEN/sendMessage?chat_id=$TELEGRAM_CHAT_ID&parse_mode=html&text=$SILICOIN"


def get_for_coin(coin, command):
    cmd = f'~/{coin}-blockchain/venv/bin/{coin} {command}'
    result = subprocess.check_output(cmd, shell=True, text=True)
    return f'*{coin.capitalize()}*\n{result}'


results = [get_for_coin(coin, 'farm summary') for coin in coins]

result = '\n'.join(results)
print(result)

requests.post(
    f'https://api.telegram.org/bot{TELEGRAM_TOKEN}/sendMessage',
    params={'chat_id': TELEGRAM_CHAT_ID, 'text': result, 'parse_mode': 'markdown'})
