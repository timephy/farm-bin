#!/bin/python3
import subprocess
import requests
import sys
import config


coins = ['chia', 'flax', 'chaingreen', 'silicoin']


def send_telegram(text, parse_mode='markdown'):
    requests.post(
        f'https://api.telegram.org/bot{config.TELEGRAM_TOKEN}/sendMessage',
        params={'chat_id': config.TELEGRAM_CHAT_ID, 'text': text, 'parse_mode': parse_mode})


def get_for_coin(coin, command):
    cmd = f'~/{coin}-blockchain/venv/bin/{coin} {command}'
    result = subprocess.check_output(cmd, shell=True, text=True)
    return result


def restart_for_coin(coin):
    return subprocess.check_output(f'~/farm-bin/restart_farmer.bash {coin}', shell=True, text=True)


def main():
    results = [get_for_coin(coin, 'farm summary') for coin in coins]

    # Check
    if 'check' in sys.argv:
        for coin, result in zip(coins, results):
            if 'Farming status: Farming' not in result and 'Farming status: Syncing' not in result:
                send_telegram(
                    f'❗️ *{coin.capitalize()}* not farming!\n{result}')
                restart_result = restart_for_coin(coin)
                send_telegram(
                    f'🔄 *{coin.capitalize()}* restarted.\n{restart_result}')

    # Notify
    if 'notify' in sys.argv:
        result = '\n'.join([f'🌱 *{coin.capitalize()}*\n{result}' for
                            coin, result in zip(coins, results)])
        print(result)

        send_telegram(result)


if __name__ == '__main__':
    main()
