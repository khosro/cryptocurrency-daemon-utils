"%Ethereum_Home%\bin\geth" --datadir node2/ --syncmode "full" --port 30312 --rpc --rpcaddr "localhost" --rpcport 8502 --rpcapi "personal,db,eth,net,web3,txpool,miner" --bootnodes "enode://7c022a5d88912a76332b6728e0ea08b582cb46611a008040f79c1866aeca36ca6179ce6456e656f83c7ea234045cc8abfc8f8177582a03a43a25d9b547424a0e@127.0.0.1:0?discport=30310" --networkid 1515 --gasprice "0" --unlock "0x7eb47a99b4a13F23217CB26DD15447f166A1C980" --password node2/password.txt --mine --allow-insecure-unlock --ipcpath "node2/geth.ipc"


rem --verbosity 0 console  
rem --ipcdisable

rem add   because of Fatal: Error starting protocol stack: Access is denied. #14438
rem Refer to https://github.com/ethereum/go-ethereum/issues/14438 and https://github.com/ethereum/go-ethereum/issues/1714