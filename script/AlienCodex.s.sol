// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {AlienRewrite} from "../src/Lv-19/AlienCodex.sol";

contract AlienCodexScript is Script {
    function run() public {
        vm.startBroadcast();
        //REPLACE ADDRESS WITH YOUR OWN Token INSTANCE ADDRESS
        AlienRewrite _rewriter = new AlienRewrite();
       _rewriter.rewrite(0x531407a8793535003779d243634f8aC8660c234e);
        vm.stopBroadcast();
    }
}
