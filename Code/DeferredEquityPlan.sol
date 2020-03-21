pragma solidity ^0.5.0;

/**
 * @title Deferred Equity Plan
 * This contract will be managing 1000 shares that will be distributed over
 * 4 years to the employee. Ether won't be needed to work with this contract,
 * as it will be storing and setting amounts that represent the number of
 * distributed shares the employee owns and enforcing the vetting periods automatically.
 */
contract DeferredEquityPlan {
    
    address humanResources;

    // Declaring an employee variable and a bool that states
    // the employee is active at the start of the contract.
    address payable employee;
    bool active = true;

    // Total shares of 1000 and annual distribution of 25%.
    uint totalShares = 1000;
    uint annualDistribution = 250;

    // Permanently store the time this contract was initialized.
    uint startTime = now;
    
    // Setting the unlock time to be 365 days from now.
    uint unlockTime = now + 365 days;

    uint public distributedShares;

    /**
    * @dev The parameter employee address is passed to the previously
    * declared employee address variable. The previously declared address
    * for human resources is set to the msg.sender.
    * @param _employee payable address of the employee
    */
    constructor(address payable _employee) public {
        humanResources = msg.sender;
        employee = _employee;
    }

    /**
    * @dev Function that distributes the shares to the employee.
    * The function only allows human resources to access it or
    * the employee. It then verifies that enough time has passed
    * to distribute the next 25% of shares.
    */
    function distribute() public {
        require(msg.sender == humanResources || msg.sender == employee, "You are not authorized to execute this contract.");
        require(active == true, "Contract not active.");

        // Require statements to enforce that:
        // 1: 'unlockTime' is less than or equal to 'now'
        // 2: 'distributedShares' is less than the 'totalShares'
        require(unlockTime <= now, "It is not time to distributed your annual shares.");
        require(distributedShares < totalShares, "All of your shares have been distributed");

        // Add 365 days to 'unlockTime'
        unlockTime = now + 365 days;

        // Calculate the shares distributed
        distributedShares = ((now - startTime) / 365 days) * annualDistribution;

        // Check in case the employee does not cash out until after 5+ years
        if (distributedShares > 1000) {
            distributedShares = 1000;
        }
    }

    /**
    * @dev function allows human resources and the employee to deactivate this contract at-will.
    */
    function deactivate() public {
        require(msg.sender == humanResources || msg.sender == employee, "You are not authorized to deactivate this contract.");
        active = false;
    }

    /**
    * @dev The contract does not handle Ether, therefore, this function
    * reverts any Ether sent to the contract directly.
    */
    function() external payable {
        revert("Do not send Ether to this contract!");
    }
}