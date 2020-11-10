"%Ethereum_Home%\bin\geth" --datadir node1/ --syncmode "full" --port 30311 --rpc --rpcaddr "localhost" --rpcport 8501 --rpcapi "personal,db,eth,net,web3,txpool,miner" --bootnodes "enode://7c022a5d88912a76332b6728e0ea08b582cb46611a008040f79c1866aeca36ca6179ce6456e656f83c7ea234045cc8abfc8f8177582a03a43a25d9b547424a0e@127.0.0.1:0?discport=30310" --networkid 1515 --gasprice "1" -unlock "0x27cD71C0Ab827B1B07b57B0AB774D3106E1C5104" --password node1/password.txt --mine  --allow-insecure-unlock --ws --wsaddr "0.0.0.0" --wsport 8547


rem --mine  --verbosity 5   --verbosity 0   --mine --minerthreads 1 