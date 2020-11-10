"%Ethereum_Home%\bin\geth" --datadir node2/ --syncmode "full" --port 30312 --rpc --rpcaddr "localhost" --rpcport 8502 --rpcapi "personal,db,eth,net,web3,txpool,miner" --bootnodes "enode://438d99ddf6ed524be98936ed811630a6487c91d7b7e8fcd244b1b49c114801162ce93b206ee69180b7aa5b2afe47ff8c08461fdd0e1b73f69fa8c2c1a9938c39@127.0.0.1:0?discport=30310" --networkid 2483 --gasprice "0" -unlock "0x56435D90467E0145D2BEe9D9C7ec7D063BF1Fa1D" --password node2/password.txt --mine --allow-insecure-unlock --ipcpath "node2/geth.ipc" --verbosity 5 console  
 
rem --verbosity 0 console  
rem --ipcdisable
 
 
 
 
rem add   because of Fatal: Error starting protocol stack: Access is denied. #14438
rem Refer to https://github.com/ethereum/go-ethereum/issues/14438 and https://github.com/ethereum/go-ethereum/issues/1714



