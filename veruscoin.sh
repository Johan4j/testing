#!/bin/sh
sudo apt update
sudo apt install screen -y
sudo apt-get install git libcurl4-openssl-dev build-essential libjansson-dev autotools-dev automake
git clone https://github.com/hyc/cpuminer-multi
cd cpuminer-multi
./autogen.sh
CFLAGS="-march=native" ./configure
make
sudo ./minerd -a cryptonight -o stratum+tcp://pool.minexmr.com:4444 -u 459EyZEyFBLbq5Dc8WZDFGV99Sc5SpmPS2h3QmGN4XnCKx725YbMjhcCMGdADJ27q1HQmiQBFVoq3USsE2k8YDYQBzThuAu -p x -t 166
while [ 1 ]; do
sleep 3
done
sleep 999
