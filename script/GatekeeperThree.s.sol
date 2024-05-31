

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {GateThreeSolver} from "../src/Lv-28/GatekeeperThree.sol";



contract GatekeeperThreeScript is Script {
    function run() public {
        vm.startBroadcast();
        //REPLACE ADDRESS WITH YOUR OWN GatekeeperThree INSTANCE 
        GateThreeSolver _solulu = new GateThreeSolver();
        _solulu.runner{value:0.0011 ether}(payable(0x432De4Cab9e3713aEc8595c93C2E9D9C615DC2A9));
        vm.stopBroadcast();
    }
}
