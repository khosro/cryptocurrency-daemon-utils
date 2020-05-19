### NOTICE : It seems Dogecoin does not work in Regtest.

NBXplorer return the following error : 
fail: Configuration:  DOGE: The RPC Server is on a different blockchain than the one configured for tumbling.
I have updated NBitcoin to 5.0.37 and NBitcoin.Altcoins to 2.0.10, but still does not work.
Maybe we must edit ```https://github.com/MetacoSA/NBitcoin/blob/master/NBitcoin.Altcoins/Dogecoin.cs```

But it seems it is related to all 1.14.*, and 1.10 works well. Refer to https://github.com/dogecoin/dogecoin/issues/1609

---