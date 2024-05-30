// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

import {Script, console} from "forge-std/Script.sol";
import {Token} from "../src/Lv-05/Token.sol";

contract TokenScript is Script {
    function run() public {
        vm.startBroadcast();
        //REPLACE ADDRESS WITH YOUR OWN Token INSTANCE ADDRESS
        Token _token = Token(0x5C39de55dd0a3d4168dF6b00354fC7887f3eC20E);
        _token.transfer(address(0), 25);
        vm.stopBroadcast();
    }
}
