# Error Handling in Solidity Smart Contract

This smart contract demonstrates error handling in Solidity using the `require()`, `assert()`, and `revert()` statements. These methods help validate conditions and manage errors effectively during the execution of smart contract functions.

## Methods

### require()
- Validates conditions before further execution.
- If the condition fails, the execution is terminated, and an optional error message is displayed.
- Syntax: `require(condition, message);`.

### assert()
- Checks conditions and terminates execution if the condition fails.
- Generates an error message if the condition is not met.
- Syntax: `assert(condition);`.

### revert()
- Flags an error and reverts the current call, undoing any changes made to the state.
- An optional error message can be provided.
- Syntax: `revert(message);`.

## Contract Code

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract ErrorHandling {
    uint public number;

    function validateRequire(uint inputNum) public pure {
        require(inputNum > 20, "Input must be greater than 20"); // Require statement with a condition and a message
    }

    function validateAssert(uint inputNumber) public view {
        assert(inputNumber == 5); // Assert statement with a condition
    }

    function validateRevert(uint inputNum) public pure {
        if (inputNum <= 20) { // Revert statement with a condition and a message
            revert("Input must be greater than 20");
        }
    }
}
