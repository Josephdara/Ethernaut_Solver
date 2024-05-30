// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {CoinFlip,CoinFlipSolver} from "../src/Lv-03/CoinFlip.sol";

contract CoinFlipSolverScript is Script {

    //RUN first ONCE then comment out 

    // function run() public {
    //     vm.startBroadcast();
    //     //REPLACE ADDRESS WITH YOUR OWN CoinFlip INSTANCE ADDRESS
    //     CoinFlipSolver _solver = new CoinFlipSolver(0xC95bfC20212690d4EE4E956202C2aC254A46974C);
    //     _solver.flip();
    //     vm.stopBroadcast();
    // }









    //RUN 9 times after commenting out the first `run()`

        // function run() public {
        // vm.startBroadcast();
        // //REPLACE ADDRESS WITH YOUR OWN CoinFlipSolver which was deployed in the first run
        // CoinFlipSolver _solver = CoinFlipSolver(0x643c2e7cfD5b5C8F50C6A90B73236f8D9d3a2124);
        // _solver.flip();
      
        // vm.stopBroadcast();
        
    //}

}
