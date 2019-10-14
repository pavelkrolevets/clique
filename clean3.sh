#!/bin/bash


rm -rf ./node1/geth/
rm -rf ./node2/geth/
rm -rf ./node3/geth/

./geth --datadir node1/ init genesis.json
./geth --datadir node2/ init genesis.json
./geth --datadir node3/ init genesis.json
