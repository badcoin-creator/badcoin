// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {BadCoin} from "../src/BadCoin.sol";

contract BadCoinScript is Script {
    BadCoin public token;
    string private uri =
        "https://raw.githubusercontent.com/badcoin-creator/badcoin/refs/heads/main/data/tokenMetadata.json";

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        token = new BadCoin(uri);

        vm.stopBroadcast();
    }
}
