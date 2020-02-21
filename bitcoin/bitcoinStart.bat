rem echo %CD%
rem set BitCoin_Run_HOME=%CD%
"%BitCoin_Home%\bin\bitcoind"   -conf="%BitCoin_Data_Home%\bitcoin.conf"   -datadir="%BitCoin_Data_Home%\data" -port=18444

cmd /k