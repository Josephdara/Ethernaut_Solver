
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {IForta,Bot} from "../src/Lv-26/DoubleEntryPoint.sol";



contract DoubleEntryPointScript is Script {
    function run() public {
        vm.startBroadcast();
        //REPLACE ADDRESS WITH YOUR OWN Forta address gotten from your contract INSTANCE 
        Bot _bot = new Bot();
        IForta(0x16e1ee62aCD134922E99a084CcfCaf509E7bF283).setDetectionBot(address(_bot));

        vm.stopBroadcast();
    }
}
