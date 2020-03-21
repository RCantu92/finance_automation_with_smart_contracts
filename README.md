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
    * This contract will accept Ether into the contract and divide the Ether evenly among three associate level employees. The main advantage this will have is to pay out to the employees quickly and efficiently.

* ### Tiered Profit Splitter 
    * This contract will distribute different percentages of incoming Ether to employees according to their respective tiers/levels. For example, 60%, 25%, 15% as percentage thresholds, depending on their tiers/levels.

* ### Defferred Equity Plan 
    * This last contract will automatically manage 1000 shares with an annual distribution of 250 over 4 years for the selected employee.

### Deploying each contract

After navigating to Remix, copy and paste the code into the editor. Once pasted, compile the code under the second tab on the left. To make sure you are using the correct version of Solidity, select 

```
0.5.0+commit.1d4f565a
```
Under the compiler option. Next click the

```
Compile {fileName}.sol
```
button to get the file ready to deploy.

To deploy, navigate to the third tab from the left, and click the

```
deploy
```
button. Depending on which file you decided to deploy, you will need to provide different data under the deploy drop down arrow. Once you have provided the correct info, you are now ready to start testing out the contract for yourself!

## Built With

* [Solidity, v.0.5.0](https://solidity.readthedocs.io/en/v0.5.0/) - The programming language used.
* [Remix](https://remix.ethereum.org/#optimize=false&evmVersion=null&version=soljson-v0.6.1+commit.e6f7d5a4.js) - Online IDE used.

## Authors

* **Roberto Cantu**  - [GitHub](https://github.com/RCantu92)