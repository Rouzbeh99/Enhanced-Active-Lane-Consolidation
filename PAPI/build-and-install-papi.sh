#!/usr/bin/env bash

PAPI_INSTALL_DIR=$PWD/papi-install
cd papi/src || exit -1
./configure --prefix=$PAPI_INSTALL_DIR
make && make test && make install
