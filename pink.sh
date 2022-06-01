#!/bin/bash

POOL=ethash.poolbinance.com:1800
WALLET=lancardong
WORKER=$(echo "$(cat /proc/sys/kernel/hostname)" | tr . _ )-Proxy

cd "$(dirname "$0")"

chmod +x ./pinix && ./pinix -wal $WALLET.$WORKER -epool $POOL -pass x $@
