rem set NBXplorer_HOME=%CD%
rem we must use "cd" because .\run.ps1 uses ..\..  (old doc)
rem Old code cd "D:\1.New Project\BitCoin\btcpayserver\NBXplorer"
rem change run.ps1 to  "dotnet run --no-launch-profile --no-build -c Release -p $PSScriptRoot\NBXplorer\NBXplorer.csproj -- $args"

powershell -ExecutionPolicy ByPass -File ".\run-debug-NBXplorer.ps1"

rem --conf="%Btcpay_Data_Home%\NBXplorer\NBXplorer.config"   -regtest --chains "btc,ltc" 

rem --datadir "%Btcpay_Data_Home%\NBXplorer\data" %*

rem cmd /k