#!/bin/python3

import subprocess
import requests
import sys
import re
import os

TELEGRAM_TOKEN = os.environ['TELEGRAM_TOKEN']
TELEGRAM_CHAT_ID = os.environ['TELEGRAM_CHAT_ID']

coins = ['chia', 'flax', 'chaingreen', 'silicoin',
         'hddcoin', 'staicoin', 'flora', 'greendoge']


def send_telegram(text, parse_mode='markdown'):
    requests.post(
        f'https://api.telegram.org/bot{TELEGRAM_TOKEN}/sendMessage',
        params={'chat_id': TELEGRAM_CHAT_ID, 'text': text, 'parse_mode': parse_mode})


def get_for_coin(coin, command):
    cmd = f'~/{coin}-blockchain/venv/bin/{coin} {command}'
    result = subprocess.check_output(cmd, shell=True, text=True)
    return result


def restart_for_coin(coin):  # TODO: running script from within python crashes... idk why
    # return subprocess.check_output(f'~/farm-bin/restart_farmer.bash {coin}', shell=True, text=True)
    return subprocess.check_output(f'restart {coin} farmer', shell=True, text=True)


def format_result(result):
    try:
        farming_status = re.search('Farming status: (.*)\n', result).group(1)
        total_farmed = re.search('Total (.*) farmed: (.*)\n', result).group(2)
        size_of_plots = re.search(
            'Total size of plots: (.*)\n', result).group(1)
        network_space = re.search(
            'Estimated network space: (.*)\n', result).group(1)
        expected_time_to_win = re.search(
            'Expected time to win: (.*)\n', result).group(1)
        return '\n'.join([
            # f'Farming status: {farming_status}',
            f'Total farmed: {total_farmed}',
            # f'Total size of plots: {size_of_plots}',
            # f'Estimated network space: {network_space}',
            # f'Expected time to win: {expected_time_to_win}',
            f'Expected: {expected_time_to_win}',
        ])
    except AttributeError:
        return 'Error formating'


def main():
    results = [get_for_coin(coin, 'farm summary') for coin in coins]

    # Check
    if 'check' in sys.argv:
        for coin, result in zip(coins, results):
            # if 'Farming status: Farming' not in result and 'Farming status: Syncing' not in result:
            if 'Connection error' in result:
                send_telegram(
                    f'❗️ *{coin.capitalize()}* not farming or syncing!\n{result}')

    if 'restart' in sys.argv:
        for coin, result in zip(coins, results):
            # if 'Farming status: Farming' not in result and 'Farming status: Syncing' not in result:
            if 'Connection error' in result:
                send_telegram(
                    f'🔄 *{coin.capitalize()}* restarting.')
                restart_result = restart_for_coin(coin)
                # send_telegram(
                #     f'🔄 *{coin.capitalize()}* restarting.\n{restart_result}')

    # Notify
    if 'notify' in sys.argv:
        result = '\n'.join([f'🌱 *{coin.capitalize()}*\n{format_result(result)}\n' for
                            coin, result in zip(coins, results)])
        print(result)

        send_telegram(result)


if __name__ == '__main__':
    main()
