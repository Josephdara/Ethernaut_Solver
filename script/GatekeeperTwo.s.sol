// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {GateTwoSolver} from "../src/Lv-14/GateKeeperTwo.sol";

contract GatekeeperTwoScript is Script {
    function run() public {
        vm.startBroadcast();
        //REPLACE ADDRESS WITH YOUR OWN GateKeeperTwo INSTANCE ADDRESS
        GateTwoSolver solution = new GateTwoSolver(0xde9d62eBDa3613695DE6F6f99DE38b5b3c5f0e76);

        vm.stopBroadcast();
    }
}
