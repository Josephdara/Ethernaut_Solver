// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {TelephoneSolver} from "../src/Lv-04/Telephone.sol";

contract TelephoneScript is Script {
    function run() public {
        vm.startBroadcast();
        //REPLACE ADDRESS WITH YOUR OWN Telephone INSTANCE ADDRESS
        TelephoneSolver _solver = new TelephoneSolver(0xd75F84C8fCEF27edebFC14660194198dd923684D);

      
        vm.stopBroadcast();
    }
}
