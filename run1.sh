#!/bin/bash
echo "Starting node1 ..."

./geth --datadir node1/ \
  --identity node1 \
  --syncmode full \
  --port 30311  \
  --ws \
  --ws.addr 0.0.0.0 \
  --ws.port 8546 \
  --ws.origins "*" \
  --http \
  --http.addr 0.0.0.0 \
  --http.port 8545 \
  --http.corsdomain "*" \
  --http.api shh,personal,db,eth,net,web3,txpool,miner,admin \
  --bootnodes enode://fd8b7d623070867bd0458369f5e9f6f4031d105fe559180719846d4a2a82f96d5a5cb987047e86b55b0dafcca786349173f18a3565db9d7ba8c2aecbdfd1ea8d@127.0.0.1:30310 \
  --networkid 6581 \
  --unlock 0xb47f736b9b15dcc888ab790c38a6ad930217cbee \
  --password node1/password.txt \
  --mine \
  --verbosity 4 \
  --allow-insecure-unlock
