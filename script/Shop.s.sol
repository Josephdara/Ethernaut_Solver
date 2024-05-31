// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Bargainer} from "../src/Lv-21/Shop.sol";

contract ShopScript is Script {
    function run() public {
        vm.startBroadcast();
        //REPLACE ADDRESS WITH YOUR OWN Shop INSTANCE ADDRESS
        Bargainer _solver = new Bargainer();
        _solver.bargain(0xCf7880464F388FB6ffd692b268e6b3Dc07D3fE95);

      
        vm.stopBroadcast();
    }
}
