//SPDX-License-Identifier: MIT
//contracts/Domb.sol
pragma solidity ^0.8.0;

//imports of ERC20 and ERC20Capped from openzeppelin
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";

//ERC20Capped also inherits ERC20
contract Domb is ERC20Capped {
    address payable public owner;
    constructor() ERC20("Domb", "DMB") {
        //msg.sender is not payable by default
        owner = payable(msg.sender);
        _mint();
    }
}