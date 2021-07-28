# farm-bin

My helper scripts for farming chia, flax, chaingreen and silicoin on a RPi.

## How to use

1. Create `~/mnemonic` with your mnemonic
2. Set `TELEGRAM_TOKEN` and `TELEGRAM_CHAT_ID`in `.env`
3. Run `./install.bash`
4. Switch log level manually in `~/.COIN/mainnet/config/config.yaml`
5. Run `./plots_add.bash`
6. Copy/paste content of `fstab` into `vi /etc/fstab`
7. Copy/paste content of `crontab` into `crontab -e`
