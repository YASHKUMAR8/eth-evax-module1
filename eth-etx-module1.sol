// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Error {
    uint public number;

    function validateAssert(uint inputNumber) public view {
        assert(inputNumber == 0); 
    }

    function validateRequire(uint inputNum) public pure {
        require(inputNum > 20, "Input must be greater than 20"); 
    }

    function validateRevert(uint inputNum) public pure {
        if (inputNum <= 20) {
            revert("Input must be greater than 20"); 
        }
    }
}
