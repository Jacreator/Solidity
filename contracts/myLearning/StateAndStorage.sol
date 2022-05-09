// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

contract StateAndStorage {
    uint[20] public arr;

    function startChange() public {
        firstChange(arr);
        secondChange(arr);
    }

    function firstChange(uint[20] storage x) internal {
        x[0] = 4;
    }

    function secondChange(uint[20] memory x) pure internal {
        x[0] = 3;
    }
}