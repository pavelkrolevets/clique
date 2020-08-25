#!/bin/bash


rm -rf ./node1/geth/
echo "Cleaned node1"
rm -rf ./node2/geth/
echo "Cleaned node2"
rm -rf ./node3/geth/
echo "Cleaned node3"

./geth --datadir node1/ init genesis.json
./geth --datadir node2/ init genesis.json
./geth --datadir node3/ init genesis.json
