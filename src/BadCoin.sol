// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract BadCoin is ERC20Burnable, ERC20Permit {
    constructor() ERC20("badcoin", "BAD") ERC20Permit("badcoin") {
        _mint(msg.sender, 484848484848 ether);
    }
}
