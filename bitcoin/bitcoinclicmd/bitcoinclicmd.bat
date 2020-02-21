rem echo %CD%
rem set BitCoin_Run_HOME=%CD%
"%BitCoin_Home%\bin\bitcoin-cli"   -conf="%BitCoin_Data_Home%\bitcoin.conf"   -datadir="%BitCoin_Data_Home%\bitcoind" -rpcport=43772  %*

rem cmd /k