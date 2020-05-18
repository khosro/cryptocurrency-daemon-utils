### Instruction 

```
git clone https://github.com/khosro/cryptocurrency-daemon-utils
```

Specify ```BtcPay_Src``` and ```BasePath```. ```BasePath``` is the root folder path of this project.
And also in ```BasePath```, all softwares located in its home directory with bin folder that contains daemon .For example bitcoin core located in ```%BitCoin_Home%``` and in ```%BitCoin_Home%``` we have a ```bin``` folder that contains bitcoin core daemon(bitcoind.exe).The same applied for all other softwares.

```BtcPay_Src``` is the root folder that contains source code of ```btcpayserver``` and ```NBXplorer```. And these projects must be in the same root folder.

Then Extract the content of cryptocurrency-daemon-utils_daemon.zip to root of project. You can download it from https://drive.google.com/file/d/1cPl0MT4lhJIbE2duRvEkEygw0h4q2vEF/view?usp=sharing

```
setx   Btcpay_Data_Home     "<BasePath>\btcpayserver"
setx   BtcPay_Src           "<Source_Code_Path>"

setx   BitCoin_Data_Home    "<BasePath>\bitcoin"
setx   BitCoin_Home         "<BasePath>\bitcoin\bitcoind"

setx   Ethereum_Home        "<BasePath>\Ethereum" 

setx   LiteCoin_Data_Home   "<BasePath>\litecoin"
setx   LiteCoin_Home        "<BasePath>\litecoin\litecoind"
```

```
setx BTCPAY_CONF    "<BasePath>\btcpayserver\btcpay\btcpay.config"
setx BTCPAY_CHAINS  "btc,ltc"
setx BTCPAY_NETWORK  "regtest"
```

```
setx NBXPLORER_CONF "<BasePath>\btcpayserver\NBXplorer\NBXplorer.config"
setx NBXPLORER_CHAINS "btc,ltc"
```

Then you can use the followning bat files : 

 ```
 %LiteCoin_Home%\litecoinStart.bat
 ```
 
``` 
 %BitCoin_Home%\bitcoinStart.bat
 %BitCoin_Home%\bitcoinclicmd\bitcoinclicmd.bat
 %BitCoin_Home%\btc-explorer.bat
```

```
 %Btcpay_Data_Home%\NBXplorer-run.bat
 %Btcpay_Data_Home%\btcpayserver-run.bat
```

```
 %Ethereum_Home%\devnet\bootnodeStart.bat
 %Ethereum_Home%\devnet\node1.bat
 %Ethereum_Home%\devnet\node2.bat
```

### Old version(Does not need to follow. Only for history.)

Update : In new version of bat files we do not the following commands, because we use the above environment variables in bat files.

```
set "Path=%BitCoin_Home%\bin;%Path%"
set "Path=%Ethereum_Home%\bin;%Path%"
set "Path=%LiteCoin_Home%;%Path%"
setx Path "%Path%"
```