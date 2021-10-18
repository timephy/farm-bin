# farm-bin

My helper scripts for farming chia, flax, chaingreen and silicoin on ubuntu.

## How to use

install.bash:

1. Run `./install.bash`
2. If on a harvester: Run `./create_mounts.bash`
3. Run `./setup.bash`
4. If on a harvester: Run `./setup_harvester.bash`

manual:

1. If on a harvester: Copy/paste (custom) content of `fstab` into `sudo vi /etc/fstab`
2. Copy/paste (custom) content of `crontab` into `crontab -e`
3. If on a farmer: Add keys with `coin X keys add`
