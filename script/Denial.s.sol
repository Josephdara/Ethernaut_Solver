// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {DOS} from "../src/Lv-20/Denial.sol";

contract DenialScript is Script {
    function run() public {
        vm.startBroadcast();
        //REPLACE ADDRESS WITH YOUR OWN Reentrance Denial ADDRESS
        DOS _dos = new DOS(0xdC768dbeDfb1ca147C65752d14B848A140a7e1F1);
        
        vm.stopBroadcast();
    }
}
