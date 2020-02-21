rem set Btcpay_BAT_File_HOME=%CD%
rem cd "D:\1.New Project\BitCoin\btcpayserver\btcpayserver"
rem change run.ps1 to  "dotnet run --no-launch-profile --no-build -c Release -p $PSScriptRoot\BTCPayServer\BTCPayServer.csproj -- $args"

powershell -ExecutionPolicy ByPass -File ".\run-debug-btcpayserver.ps1" --conf="%Btcpay_Data_Home%\btcpay\btcpay.config"  --network=regtest  --chains "btc" --btcexplorerurl http://127.0.0.1:24444 --btcexplorercookiefile "%Btcpay_Data_Home%\NBXplorer\data\RegTest\.cookie"  %*

rem  
cmd /k