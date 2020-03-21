# Finance Automation: Automating Company Finances through Smart Contracts with Solidity

This project proposes ways in which it can automate a company's finances via Solidity smart contracts. The main benefits this would provide are an increase transparency, and to make accounting and auditing practically automatic. In the 'Code' directory, there are three smart contracts files that each would automate finances in three distinct scenarios, which are as follows:

* Associate Profit Splitter
* Tiered Profit Splitter
* Deferred Equity Plan

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

## Running the tests

In your web browser, go to [Remix](https://remix.ethereum.org/#optimize=false&evmVersion=null&version=soljson-v0.6.1+commit.e6f7d5a4.js), and create a new file with the same name as your chose file in the Code/ directory.

The following is a list of the three files with an in-depth explanation of their respective roles:

* ### Associate Profit Splitter: 
    * This contract will accept Ether into the contract and divide the Ether evenly among the associate level employees. The main advantage this will have is to pay out to the employees quickly and efficiently. Unfortunately, this contract was deployed on a local blockchain, and unable to be searched on a block explorer.

* ### Tiered Profit Splitter 
    * This contract will distribute different percentages of incoming Ether to employees according to their respective tiers/levels. For example, 60%, 25%, 15% as percentage thresholds, depending on their tiers/levels. Similar to the Associate Profit Splitter contract, this one is also on a local blockchain, and thus inaccessible.

* ### Defferred Equity Plan 
    * This last contract will automatically manage 1000 shares with an annual distribution of 250 over 4 years for the selected employee. This contract was deployed on the Kovan testnet with an address of 0xD093F2830c2360a5f5D025C7674CdaFd53719c43.

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Built With

* [Solidity, v.0.5.0](https://solidity.readthedocs.io/en/v0.5.0/) - The programming language used.
* [Remix](https://remix.ethereum.org/#optimize=false&evmVersion=null&version=soljson-v0.6.1+commit.e6f7d5a4.js) - Online IDE used.

## Authors

* **Roberto Cantu**  - [GitHub](https://github.com/RCantu92)