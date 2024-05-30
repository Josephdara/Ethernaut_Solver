// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {GatekeeperOne,GateOneSolver} from "../src/Lv-13/GateKeeperOne.sol";

contract GatekeeperOneScript is Script {
    function run() public {
        vm.startBroadcast();
        //REPLACE ADDRESS WITH YOUR OWN GatekeeperOne INSTANCE ADDRESS
        GateOneSolver solution = new GateOneSolver();

        solution.solve(0xF7264032DA5287198B391074a894e500c30A0d32, 256);
        vm.stopBroadcast();
    }
}
