pragma solidity ^0.5.0;

/**
 * @title Associate Profit Splitter
 * This contract will accept Ether into the contract and
 * divide the Ether evenly among the associate level employees.
 * This will allow the Human Resources department
 * to pay employees quickly and efficiently.
 */
contract AssociateProfitSplitter {

    // Three different payable addresses representing different employees.
    address payable public employee_one;
    address payable public employee_two;
    address payable public employee_three;

    /**
    * @dev The parameter addresses are passed to the previously
    * declared employee address variables
    * @param _one payable address of the first employee
    * @param _two payable address of the second employee
    * @param _three payable address of the third employee
    */
    constructor(address payable _one, address payable _two, address payable _three) public {
        employee_one = _one;
        employee_two = _two;
        employee_three = _three;
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
    * @dev Takes the received Ether, divides it equally into three,
    * and distributes it amongst the three employees. If there is
    * some remaining, it will be sent back to the msg.sender.
    */
    function deposit() public payable {
        uint amount = msg.value / 3;

        employee_one.transfer(amount);
        employee_two.transfer(amount);
        employee_three.transfer(amount);

        // If the amount does not divide exactly into three equal parts,
        // the rest will be sent back to the msg.sender.
        uint remainder = msg.value - (amount * 3);
        msg.sender.transfer(remainder);
    }

    /**
    * @dev The fallback that calls deposit() should Ether be sent directly
    * to the contract.
    */
    function() external payable {
        deposit();
    }
}