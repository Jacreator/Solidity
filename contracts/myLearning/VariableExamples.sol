// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

contract VariableExamples {
    bool public switchOn = true;
    address public owner = msg.sender;
    uint8 public number = 8;
    bytes32 public awesome1 = "Solidity is awesome! bytes32";
    string public awesome2 = "solidity is awesome! string";

    function overflowAndUnderflow() pure public returns(uint) {
        uint256 max = 2**256-1;
        return max + 1;
    }

    function uderflow() pure public returns(uint) {
        uint256 min = 0;
        return min-1;
    }
}