pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Factory} from "../src/Lv-18/MagicNum.sol";

contract MagicNumScript is Script {
    function run() public {
        vm.startBroadcast();
        //REPLACE ADDRESS WITH YOUR OWN MagicNum INSTANCE ADDRESS
        Factory codet = new Factory();
        codet.deploy(0x04a040749A6c960307e986257c4EAdABAa758732);
        vm.stopBroadcast();
    }
}