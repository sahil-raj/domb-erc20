//contracts/DombERC20.sol
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DombERC20 is ERC20 {
    constructor() ERC20("Domb", "DOM") {
        _mint(msg.sender, 1000 * (10**decimals()));
    }
}