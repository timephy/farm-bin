#!/bin/python3
import subprocess
import requests
import sys

NOTIFY = 'notify' in sys.argv
CHECK = 'check' in sys.argv

TELEGRAM_TOKEN = ''
TELEGRAM_CHAT_ID = ''

coins = ['chia', 'flax', 'chaingreen', 'silicoin']


def get_for_coin(coin, command):
    cmd = f'~/{coin}-blockchain/venv/bin/{coin} {command}'
    result = subprocess.check_output(cmd, shell=True, text=True)
    return result


def send_telegram(text, parse_mode='markdown'):
    requests.post(
        f'https://api.telegram.org/bot{TELEGRAM_TOKEN}/sendMessage',
        params={'chat_id': TELEGRAM_CHAT_ID, 'text': text, 'parse_mode': parse_mode})


def main():
    results = [get_for_coin(coin, 'farm summary') for coin in coins]

    # Check
    if CHECK:
        for coin, result in zip(coins, results):
            if 'Farming status: Farming' not in result:
                send_telegram(f'❗️ {coin.capitalize()} not farming!\n{result}')

    # Notify
    if NOTIFY:
        result = '\n'.join([f'🌱 *{coin.capitalize()}*\n{result}' for
                            coin, result in zip(coins, results)])
        print(result)

        send_telegram(result)


if __name__ == '__main__':
    main()
