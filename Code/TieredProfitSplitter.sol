pragma solidity ^0.5.0;

/**
 * @title Tiered Profit Splitter
 * This contract will accept Ether into the contract and
 * divide it after calculating rudimentary percentages
 * for different tiers of employees (CEO, CTO, and Entry-Level).
 * This will allow the Human Resources department
 * to pay employees quickly and efficiently.
 */
contract TieredProfitSplitter {

    // Three different payable addresses representing different employees.
    address payable ceo; // CEO
    address payable cto; // CTO
    address payable entry; // Entry-Level

    /**
    * @dev The parameter addresses are passed to the previously
    * declared employee address variables
    * @param _ceo payable address of the CEO
    * @param _cto payable address of the CTO
    * @param _entry payable address of the Entry-Level employee
    */
    constructor(address payable _ceo, address payable _cto, address payable _entry) public {
        ceo = _ceo;
        cto = _cto;
        entry = _entry;
    }

    /**
    * @dev Checks the contract's balance and thus should always return 0.
    * If it does not, the deposit function is not handling the remainders properly
    * and should be fixed.
    */
    function balance() public view returns(uint) {
        return address(this).balance;
    }

    /**
    * @dev Takes the received Ether, divides it after calculating rudimentary
    * percentages for different tiers of employees and distribute it.
    * If there is some Ether remaining, it will be sent to the CEO.
    */
    function deposit() public payable {
        // Calculates rudimentary percentage by dividing msg.value into 100 units
        uint points = msg.value / 100;
        uint total;
        uint amount;

        // Calculate and transfer the distribution percentage for the CEO
        amount = points * 60;
        total += amount;
        ceo.transfer(amount);

        // Calculate and transfer the distribution percentage for the CTO
        amount = points * 25;
        total += amount;
        cto.transfer(amount);
        
        // Calculate and transfer the distribution percentage for the Entry-Level employee
        amount = points * 15;
        total += amount;
        entry.transfer(amount);

        // Transfer remaining wei to CEO
        ceo.transfer(msg.value - total);
    }

    /**
    * @dev The fallback that calls deposit() should Ether be sent directly
    * to the contract.
    */
    function() external payable {
        deposit();
    }
}