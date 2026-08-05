#!/bin/sh
# Installs OpenSSL.

source "${PWD}/bin/options.sh"

mkdir -p ./Sources/

cd ./Sources/
git clone --depth 1 https://github.com/openssl/openssl.git

cd ./openssl/ &&\
./Configure --prefix=$prefix &&\
 make -s -j$cpu_count &&\
 sudo make install

cd ../..
