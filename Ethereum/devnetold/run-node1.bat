"%Ethereum_Home%\bin\geth" --datadir node1/ --syncmode "full" --verbosity 0  --port 30311 --rpc --rpcaddr "localhost" --rpcport 8501 --rpcapi "personal,db,eth,net,web3,txpool,miner" --bootnodes "enode://438d99ddf6ed524be98936ed811630a6487c91d7b7e8fcd244b1b49c114801162ce93b206ee69180b7aa5b2afe47ff8c08461fdd0e1b73f69fa8c2c1a9938c39@127.0.0.1:0?discport=30310" --networkid 2483 --gasprice "1" -unlock "0xB6251a10A2198dE1e6AAC58BF9246DB0F42a306B" --password node1/password.txt  --allow-insecure-unlock  --ws --wsaddr "0.0.0.0" --wsport 8547


rem --mine  --verbosity 5   --verbosity 0   --mine --minerthreads 1 