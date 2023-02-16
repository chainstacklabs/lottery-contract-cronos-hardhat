<img width="1200" alt="Labs" src="https://user-images.githubusercontent.com/99700157/213291931-5a822628-5b8a-4768-980d-65f324985d32.png">

<p>
 <h3 align="center">Chainstack is the leading suite of services connecting developers with Web3 infrastructure</h3>
</p>

<p align="center">
  <a target="_blank" href="https://chainstack.com/build-better-with-ethereum/"><img src="https://github.com/soos3d/blockchain-badges/blob/main/protocols_badges/Ethereum.svg" /></a>&nbsp;  
  <a target="_blank" href="https://chainstack.com/build-better-with-bnb-smart-chain/"><img src="https://github.com/soos3d/blockchain-badges/blob/main/protocols_badges/BNB.svg" /></a>&nbsp;
  <a target="_blank" href="https://chainstack.com/build-better-with-polygon/"><img src="https://github.com/soos3d/blockchain-badges/blob/main/protocols_badges/Polygon.svg" /></a>&nbsp;
  <a target="_blank" href="https://chainstack.com/build-better-with-avalanche/"><img src="https://github.com/soos3d/blockchain-badges/blob/main/protocols_badges/Avalanche.svg" /></a>&nbsp;
  <a target="_blank" href="https://chainstack.com/build-better-with-solana/"><img src="https://github.com/soos3d/blockchain-badges/blob/main/protocols_badges/Solana.svg" /></a>&nbsp;
</p>

<p align="center">
  <a target="_blank" href="https://chainstack.com/protocols/">Supported protocols</a> •
  <a target="_blank" href="https://chainstack.com/blog/">Chainstack blog</a> •
  <a target="_blank" href="https://docs.chainstack.com/">Chainstack docs</a> •
  <a target="_blank" href="https://docs.chainstack.com/api/">Blockchain API reference</a> •
  <a target="_blank" href="https://console.chainstack.com/user/account/create">Start for free</a>
</p>

# Lottery smart contract on Cronos blockchain

In this tutorial, you will learn how to build a lottery smart contract using Solidity, and how to deploy and verify smart contracts on the Cronos blockchain using Hardhat.
This repo serves as the codebase for you to be able to follow along comfortably with the written tutorial on Chainstack's blog:

- [Lottery smart contract on Cronos blockchain](https://chainstack.com/lottery-smart-contract-on-cronos-blockchain/ "Lottery smart contract on Cronos blockchain")

## Project details

Cronos is an EVM-compatible layer 1 blockchain, equipped with the unique Inter Blockchain Communications (IBC) protocol powered by the Cosmos SDK. This gives Cronos interoperability between Cosmos and EVM ecosystems.

In this project you will be create, test, deploy and verify a Lottery smart contract on the Cronos Testnet straight from Hardhat's command line.

## Quick Start

Clone this repository.

### Install project-level dependencies:
```bash
npm install
```

### Setting up dotenv file

Run this command at the root of oyur terminal to create a dotenv file:
```bash
touch .env
```
Configure it along the following lines:

```bash
RPC_URL=CHAINSTACK_CRONOS_NODE_URL
PRIVATE_KEY=YOUR_PRIVATE_KEY
API_KEY=CRONOSCAN_API_KEY(to verify the smart contract)
```
Save the dotenv file and run this command in your terminal:

```bash
source .env
```


### Compile smart contract
```bash
npx hardhat compile
```

### Testing in Hardhat

Run this command to start a local Hardhat node in your terminal:

```bash
npx hardhat node
```
Run the tests on your local node with:

```bash
npx hardhat test --network localhost
```

### Deploy and verify

You already have the deploy script setup in scripts/DeployDutch.js. To dpeloy on Cronos testnet, simply run:

```bash
npx hardhat run --network Cronos_testnet scripts/DeployDutch.js
```

To verify:

```bash
npx hardhat verify --network Cronos_testnet {Contract Address}
```

## Conclusion

You now have a deployed and verified smart contract on the Cronos Testnet. Feel free to create your own project from scratch by following along with our blog, linked above.
