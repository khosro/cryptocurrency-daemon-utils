
```
git clone https://github.com/khosro/cryptocurrency-daemon-utils
```

Then Extract the content of cryptocurrency-daemon-utils_daemon.zip to root of project. You can download it from https://drive.google.com/file/d/1QXahbCmERCgPbOqRwqVTRU87gZNE1ret/view?usp=sharing

Specify ```<BtcPay_Src>``` and ```<BasePath>```. ```<BasePath>``` is the path of this project.
And also in ```<BasePath>```, all softwares located in its home directory with bin folder that contains daemon .For example bitcoin core located in ```%BitCoin_Home%``` and in ```%BitCoin_Home%``` we have a ```bin``` folder that contains bitcoin core daemon(bitcoind.exe).The same applied for all other softwares.

```<BtcPay_Src>``` is the folder that contains source code of ```btcpayserver``` and ```NBXplorer```. And these projects must be in the same folder. Such as the following :

```
BtcPay_Src
	btcpayserver
	NBXplorer
```

### Set environment variables

```
setx   Btcpay_Data_Home     "<BasePath>\btcpayserver"
setx   BtcPay_Src           "<Source_Code_Path>"

setx   BitCoin_Data_Home    "<BasePath>\bitcoin"
setx   BitCoin_Home         "<BasePath>\bitcoin\bitcoind"

setx   Ethereum_Home        "<BasePath>\Ethereum" 

setx   LiteCoin_Data_Home   "<BasePath>\litecoin"
setx   LiteCoin_Home        "<BasePath>\litecoin\litecoind"

setx   BitcoinGold_Data_Home   "<BasePath>\bgold"
setx   BitcoinGold_Home        "<BasePath>\bgold\bgoldd"
```

```
setx BTCPAY_CONF    "<BasePath>\btcpayserver\btcpay\btcpay.config"
setx BTCPAY_CHAINS  "btc,ltc"      // We can also set it in btcpay.config file by parameter "chains"

// setx BTCPAY_NETWORK  "regtest"    // Does not need, it is set in config, only for information
```

You can change value of %BTCPAY_CHAINS% to coins you want. Refer to [Supported Chains](#supported-chains).
Also you must changed %NBXPLORER_CHAINS%


```
setx NBXPLORER_CONF "<BasePath>\btcpayserver\NBXplorer\NBXplorer.config"

setx NBXPLORER_CHAINS "btc,ltc" //  We can also set it in NBXplorer.config file by parameter "chains"
```

You can change value of %NBXPLORER_CHAINS% to coins you want. Refer to [Supported Chains](#supported-chains)


##### NOTICE : It seems Monacoin does not work in Regtest.

```
setx   Mona_Data_Home   "<BasePath>\monacoin"
setx   Mona_Home        "<BasePath>\monacoin\monacoind"
```

##### NOTICE : It seems Dogecoin does not work in Regtest (Refer to "dogecoin/README.md").

```
setx   Dogecoin_Data_Home   "<BasePath>\dogecoin"
setx   Dogecoin_Home        "<BasePath>\dogecoin\dogecoind"
```


##### Supported Chains

Currently they are "btc,ltc,mona,btg,doge".

### Used scripts

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

Also there are other scripts in each folder based name of coin. Then you can also use them.


### Old version(Does not need to follow. Only for history.)

Update : In new version of bat files we do not the following commands, because we use the above environment variables in bat files.

```
set "Path=%BitCoin_Home%\bin;%Path%"
set "Path=%Ethereum_Home%\bin;%Path%"
set "Path=%LiteCoin_Home%;%Path%"
setx Path "%Path%"
```