
## Create Account 

D:\cryptocurrency-daemon-utils\Ethereum>cd bin

D:\cryptocurrency-daemon-utils\Ethereum\bin> geth --datadir node1/ account new
INFO [11-10|13:34:26.136] Maximum peer count                       ETH=50 LES=0 total=50
Your new account is locked with a password. Please give a password. Do not forget this password.
Password:
Repeat password:

Your new key was generated

Public address of the key:   0x27cD71C0Ab827B1B07b57B0AB774D3106E1C5104
Path of the secret key file: node1\keystore\UTC--2020-11-10T10-04-34.612482300Z--27cd71c0ab827b1b07b57b0ab774d3106e1c5104

- You can share your public address with anyone. Others need it to interact with you.
- You must NEVER share the secret key with anyone! The key controls access to your funds!
- You must BACKUP your key file! Without the key, it's impossible to access account funds!
- You must REMEMBER your password! Without the password, it's impossible to decrypt the key!

 


D:\cryptocurrency-daemon-utils\Ethereum\bin>geth --datadir node2/ account new
INFO [11-10|13:34:57.662] Maximum peer count                       ETH=50 LES=0 total=50
Your new account is locked with a password. Please give a password. Do not forget this password.
Password:
Repeat password:

Your new key was generated

Public address of the key:   0x7eb47a99b4a13F23217CB26DD15447f166A1C980
Path of the secret key file: node2\keystore\UTC--2020-11-10T10-05-01.586123200Z--7eb47a99b4a13f23217cb26dd15447f166a1c980

- You can share your public address with anyone. Others need it to interact with you.
- You must NEVER share the secret key with anyone! The key controls access to your funds!
- You must BACKUP your key file! Without the key, it's impossible to access account funds!
- You must REMEMBER your password! Without the password, it's impossible to decrypt the key!

--------------------

## Run puppeth


D:\cryptocurrency-daemon-utils\Ethereum\bin>puppeth
+-----------------------------------------------------------+
| Welcome to puppeth, your Ethereum private network manager |
|                                                           |
| This tool lets you create a new Ethereum network down to  |
| the genesis block, bootnodes, miners and ethstats servers |
| without the hassle that it would normally entail.         |
|                                                           |
| Puppeth uses SSH to dial in to remote servers, and builds |
| its network components out of Docker containers using the |
| docker-compose toolset.                                   |
+-----------------------------------------------------------+

Please specify a network name to administer (no spaces, hyphens or capital letters please)
> devnet

Sweet, you can set this via --network=devnet next time!

[32mINFO [0m[11-10|13:40:25.606] Administering Ethereum network           [32mname[0m=devnet
[33mWARN [0m[11-10|13:40:25.609] No previous configurations found         [33mpath[0m=.puppeth\\devnet

What would you like to do? (default = stats)
 1. Show network stats
 2. Configure new genesis
 3. Track new remote server
 4. Deploy network components
> 2

What would you like to do? (default = create)
 1. Create new genesis from scratch
 2. Import already existing genesis
> 1

Which consensus engine to use? (default = clique)
 1. Ethash - proof-of-work
 2. Clique - proof-of-authority
> 2

How many seconds should blocks take? (default = 15)
> 5

Which accounts are allowed to seal? (mandatory at least one)
> 0x27cD71C0Ab827B1B07b57B0AB774D3106E1C5104
> 0x7eb47a99b4a13F23217CB26DD15447f166A1C980
> 0x

Which accounts should be pre-funded? (advisable at least one)
> 0x27cD71C0Ab827B1B07b57B0AB774D3106E1C5104
> 0x7eb47a99b4a13F23217CB26DD15447f166A1C980
> 0x

Should the precompile-addresses (0x1 .. 0xff) be pre-funded with 1 wei? (advisable yes)
> yes

Specify your chain/network ID if you want an explicit one (default = random)
> 1515
[32mINFO [0m[11-10|13:42:11.149] Configured new genesis block

What would you like to do? (default = stats)
 1. Show network stats
 2. Manage existing genesis
 3. Track new remote server
 4. Deploy network components
> 2

 1. Modify existing configurations
 2. Export genesis configurations
 3. Remove genesis configuration
> 2

Which folder to save the genesis specs into? (default = current)
  Will create devnet.json, devnet-aleth.json, devnet-harmony.json, devnet-parity.json
> genesis.json
[32mINFO [0m[11-10|13:43:07.250] Saved native genesis chain spec          [32mpath[0m=genesis.json\\devnet.json
[31mERROR[0m[11-10|13:43:07.251] Failed to create Aleth chain spec        [31merr[0m="unsupported consensus engine"
[31mERROR[0m[11-10|13:43:07.251] Failed to create Parity chain spec       [31merr[0m="unsupported consensus engine"
[32mINFO [0m[11-10|13:43:07.254] Saved genesis chain spec                 [32mclient[0m=harmony [32mpath[0m=genesis.json\\devnet-harmony.json

What would you like to do? (default = stats)
 1. Show network stats
 2. Manage existing genesis
 3. Track new remote server
 4. Deploy network components
> [35mCRIT [0m[11-10|13:43:24.467] Failed to read user input                [35merr[0m=EOF

----------------------------

## Init Node 

D:\cryptocurrency-daemon-utils\Ethereum\bin>geth --datadir node1/ init genesis.json/devnet.json
INFO [11-10|13:47:54.797] Maximum peer count                       ETH=50 LES=0 total=50
INFO [11-10|13:47:54.879] Allocated cache and file handles         database=D:\\Projects\\Current\\Cryptocurrency\\src\\cryptocurrency-daemon-utils\\Ethereum\\bin\\node1\\geth\\chaindata cache=16.00MiB handles=16
INFO [11-10|13:47:54.911] Writing custom genesis block
INFO [11-10|13:47:54.935] Persisted trie from memory database      nodes=357 size=50.97KiB time=3.0017ms gcnodes=0 gcsize=0.00B gctime=0s livenodes=1 livesize=0.00B
INFO [11-10|13:47:54.948] Successfully wrote genesis state         database=chaindata hash=7eba97…587d04
INFO [11-10|13:47:54.955] Allocated cache and file handles         database=D:\\Projects\\Current\\Cryptocurrency\\src\\cryptocurrency-daemon-utils\\Ethereum\\bin\\node1\\geth\\lightchaindata cache=16.00MiB handles=16
INFO [11-10|13:47:54.984] Writing custom genesis block
INFO [11-10|13:47:54.997] Persisted trie from memory database      nodes=357 size=50.97KiB time=2.0001ms gcnodes=0 gcsize=0.00B gctime=0s livenodes=1 livesize=0.00B
INFO [11-10|13:47:55.008] Successfully wrote genesis state         database=lightchaindata hash=7eba97…587d04

D:\cryptocurrency-daemon-utils\Ethereum\bin>geth --datadir node2/ init genesis.json/devnet.json
INFO [11-10|13:48:11.335] Maximum peer count                       ETH=50 LES=0 total=50
INFO [11-10|13:48:11.429] Allocated cache and file handles         database=D:\\Projects\\Current\\Cryptocurrency\\src\\cryptocurrency-daemon-utils\\Ethereum\\bin\\node2\\geth\\chaindata cache=16.00MiB handles=16
INFO [11-10|13:48:11.459] Writing custom genesis block
INFO [11-10|13:48:11.473] Persisted trie from memory database      nodes=357 size=50.97KiB time=1.9999ms gcnodes=0 gcsize=0.00B gctime=0s livenodes=1 livesize=0.00B
INFO [11-10|13:48:11.485] Successfully wrote genesis state         database=chaindata hash=7eba97…587d04
INFO [11-10|13:48:11.493] Allocated cache and file handles         database=D:\\Projects\\Current\\Cryptocurrency\\src\\cryptocurrency-daemon-utils\\Ethereum\\bin\\node2\\geth\\lightchaindata cache=16.00MiB handles=16
INFO [11-10|13:48:11.528] Writing custom genesis block
INFO [11-10|13:48:11.544] Persisted trie from memory database      nodes=357 size=50.97KiB time=2.0002ms gcnodes=0 gcsize=0.00B gctime=0s livenodes=1 livesize=0.00B
INFO [11-10|13:48:11.558] Successfully wrote genesis state         database=lightchaindata hash=7eba97…587d04

D:\cryptocurrency-daemon-utils\Ethereum\bin>bootnode -genkey boot.key

--------------

