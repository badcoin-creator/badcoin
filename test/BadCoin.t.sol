// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {BadCoin} from "../src/BadCoin.sol";

contract BadCoinTest is Test {
    BadCoin public coin;
    string private uri = "https://test.com";
    uint256 private totalSupply = 1000000000 ether;

    function setUp() public {
        coin = new BadCoin(uri);
    }

    function test_Mint() public view {
        assertEq(coin.balanceOf(address(this)), totalSupply);
        assertEq(coin.totalSupply(), totalSupply);
    }

    function test_Params() public view {
        assertEq(coin.name(), "BADcoin");
        assertEq(coin.symbol(), "BAD");
        assertEq(coin.decimals(), 18);
    }

    function test_transfer() public {
        coin.transfer(address(1), 666);
        assertEq(coin.balanceOf(address(1)), 666);
    }

    function test_burn() public {
        coin.burn(123 ether);
        assertEq(coin.balanceOf(address(this)), totalSupply - 123 ether);
    }

    function test_uri() public view {
        assertEq(coin.tokenURI(), uri);
    }

    function test_uri_update() public {
        string memory newURI = "newURI";
        coin.updateTokenURI(newURI);
        assertEq(coin.tokenURI(), newURI);
    }

    function testFail_uri_update_not_owner() public {
        vm.prank(address(0));
        coin.updateTokenURI("newURI");
    }
}
