# farm-bin

My helper scripts for farming chia, flax, chaingreen and silicoin on ubuntu.

## How to setup

### Run `install.bash` which does:

1. Run `./install.bash`
2. If on a harvester: Run `./create_mounts.bash`
3. Run `./setup.bash`
4. If on a harvester: Run `./setup_harvester.bash`

Optionally you should put `source ~/farm-bin/functions.bash` in your `~/.bashrc` so you can run the `coins` and `coin` commands from your shell directly.
Also put your `TELEGRAM_TOKEN` and `TELEGRAM_CHAT_ID` in your `~/.bashrc` as well.


### Do manually:

1. If on a harvester: Copy/paste (custom) content of `fstab` into `sudo vi /etc/fstab`
2. Copy/paste (custom) content of `crontab` into `crontab -e`
3. If on a farmer: Add keys with `coins keys add`
4. If on a farmer: Copy/paste 

## How to use

Simply run `coins start farmer` to start all farmers or `coins start harvester` to start all harvesters.

