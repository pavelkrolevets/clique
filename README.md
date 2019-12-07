# Preliminary:

### tmux

For Linux instructions are [here](https://github.com/tmux/tmux)

For OSX run:

```
brew install tmux
```

### Build Geth and Bootnode (command line client):

Compile and copy `geth` and `bootnode` binaries to the root directory. Instructions are [here](https://github.com/ethereum/go-ethereum/wiki/Installation-Instructions-for-Mac)

Clone the repository to a directory of your choosing:

```
git clone https://github.com/ethereum/go-ethereum
```

Building geth requires the Go compiler:

```
brew install go
```

Finally, build the geth program using the following command.

```
cd go-ethereum
make all
```

You can now find binary files in `build/bin/geth` to start your node.

Copy `geth` and `bootnode` to `clique` folder.


# Run:
1. Clean blockchain data:

```
sh clean3.sh
```

2. Run 1 bootnode and 3 nodes in tmux (bootnode and 3 nodes will run in separate tmux seesions):

```
sh run_chain.sh
```

3. To see a node tmux sessions run:

```
tmux ls
```
To attach to a tmux node session, ru:

```
tmux a -t node1
```
4. To stop all nodes and kill created tmux sessions run:

`sh kill_chain.sh`

To change chain parameters please edit `genesis.json`. You can set there block time and prefunded accounts. 

## Unlocked and prefunded accounts:

1. `0xb47f736b9b15dcc888ab790c38a6ad930217cbee`

Private key: 
`0xa1e2b995399b0fae339315fd0aa91fbe57a34e5c6d93aa2266f8f6252a2db7bb`


2. `0x01665a4eb869efbf3af991e0b791d5347718a49d`

Private key: 
`0xae5b69873fe9b6160df1175fb929cc95302396d1deecf186d1df70c70145727e`

3. `0x3833067356d624e36fa8cfaf208e97263f3e0703`

Private key: 
`0x0bbc7f6112ff481ffbad0b32b9251004dac6b7b7742629e671bcb2b1c9c216bf`

## Open ports:
1. RPC `127.0.0.1:8545`
2. Websockets `127.0.0.1:8546`
