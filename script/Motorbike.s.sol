//

// SPDX-License-Identifier: UNLICENSED
pragma solidity <0.7.0;

import {Script, console} from "forge-std/Script.sol";
import {Controller,Engine} from "../src/Lv-25/Motorbike.sol";

contract MotorbikeScript is Script {
    function run() public {
        vm.startBroadcast();
    //     //REPLACE ADDRESS WITH YOUR OWN Controller got from the storage slot of your INSTANCE ADDRESS
    //    Controller _troll = new Controller();
    //    _troll.post(0x7C3fCA81ae8F49D54C809064fD5f59fE201e8501);
      console.log(Engine(0x849AC76e9f594dE5C81d953251d7DdFC676D9Da9).horsePower());
        vm.stopBroadcast();
    }
}
