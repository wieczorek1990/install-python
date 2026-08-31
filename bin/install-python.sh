#!/bin/sh
# Installs Python.

source "${PWD}/bin/options.sh"

mkdir -p ./Sources/

cd ./Sources/
git clone --depth=1 git@github.com:python/cpython.git

cd ./cpython/ &&\
 ./configure --prefix=$prefix --with-openssl=$prefix &&\
 make -s -j$cpu_count &&\
 sudo make install

cd ../..
