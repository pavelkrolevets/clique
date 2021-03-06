#!/bin/bash
echo "Starting node1 ..."

./geth --datadir node1/ \
  --identity node1 \
  --syncmode full \
  --port 30311  \
  --ws \
  --wsaddr 0.0.0.0 \
  --wsport 8546 \
  --wsorigins "*" \
  --rpc \
  --rpcaddr 0.0.0.0 \
  --rpcport 8545 \
  --rpccorsdomain "*" \
  --rpcapi shh,personal,db,eth,net,web3,txpool,miner,admin \
  --bootnodes enode://fd8b7d623070867bd0458369f5e9f6f4031d105fe559180719846d4a2a82f96d5a5cb987047e86b55b0dafcca786349173f18a3565db9d7ba8c2aecbdfd1ea8d@127.0.0.1:30310 \
  --networkid 6581 \
  --gasprice 0 \
  --unlock 0xb47f736b9b15dcc888ab790c38a6ad930217cbee \
  --password node1/password.txt \
  --mine \
  --verbosity 4 \
  --allow-insecure-unlock
