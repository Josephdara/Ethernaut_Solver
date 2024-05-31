// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;


import {Script, console} from "forge-std/Script.sol";
import {PuzzleMaze} from "../src/Lv-24/Puzzle.sol";

contract PuzzleScript is Script {
    function run() public {
        vm.startBroadcast();
       PuzzleMaze _maze = new PuzzleMaze();
        _maze.runOne(0xFF65B943f4A488b989C4A9C4C59e6195e3cBb496);

       _maze.runAll{value: 0.001 ether}(0xFF65B943f4A488b989C4A9C4C59e6195e3cBb496);
        vm.stopBroadcast();
    }
       
}
