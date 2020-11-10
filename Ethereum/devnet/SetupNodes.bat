"%Ethereum_Home%\bin\geth" geth --datadir node1/ init genesis.json/devnet.json
"%Ethereum_Home%\bin\geth" geth --datadir node2/ init genesis.json/devnet.json
"%Ethereum_Home%\bin\geth" bootnode -genkey boot.key