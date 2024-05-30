
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {Elevator, Buildooorrr} from "../src/Lv-11/Elevator.sol";



contract ElevatorScript is Script {
    function run() public {
        vm.startBroadcast();
        //REPLACE ADDRESS WITH YOUR OWN Elevator INSTANCE ADDRESS
        Buildooorrr buld = new Buildooorrr();
        buld.go(0x4B5Bb500007c21359De0f40C543F5ee424e4ada5);
        vm.stopBroadcast();
    }
}
