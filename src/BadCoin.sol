// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract BadCoin is ERC20Burnable {
    constructor() ERC20("badcoin", "BAD") {
        _mint(msg.sender, 484848484848 ether);
    }
}
