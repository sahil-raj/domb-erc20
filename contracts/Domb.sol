//SPDX-License-Identifier: MIT
//contracts/Domb.sol
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Domb is ERC20 {
    address payable public owner;
    constructor() {
        
    }
}