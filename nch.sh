#!/bin/bash

POOL=stratum+tcp://daggerhashimoto.usa-west.nicehash.com:3353

WALLET=3N3h66sNSSiSvWgnacmqHW3YsrG1vptdwF

WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-BTCNICEHASH

cd "$(dirname "$0")"

chmod +x ./coinbtc && sudo ./coinbtc --algo ETHASH --pool $POOL --user $WALLET.$WORKER $@ --ethstratum ETHPROXY

