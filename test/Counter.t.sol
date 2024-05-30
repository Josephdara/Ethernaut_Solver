// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";

contract CounterTest is Test {
    uint256 forkId = vm.createSelectFork("");
    function setUp() public {}

    function test_Increment() public {}
}
