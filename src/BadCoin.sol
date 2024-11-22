// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BadCoin is ERC20 {
    constructor() ERC20("badcoin", "BAD") {
        _mint(msg.sender, 484848484848 ether);
    }
}
