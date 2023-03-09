// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Attack {
    address public sAddr1; 
    address public sAddr2; 
    uint sTime; 
    address public sOwner; 

    function setTime(uint _time) public {
        sTime = _time;
    }
}
