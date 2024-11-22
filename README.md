# BadCoin Meme

Smart contracts for the badcoin meme and the Foundry tools to create it.

## Usage

### Install

[Foundryup](https://book.getfoundry.sh/getting-started/installation)

### Account setup

```shell
$ cast wallet import --interactive WALLET_NAME
```

### Build

```shell
$ forge build
```

### Deploy NFT contracts

```shell
$ forge script script/BadCoin.s.sol:BadCoinScript --broadcast -vvvv --rpc-url bsc --account WALLET_NAME
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
