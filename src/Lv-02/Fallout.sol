// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

//Reduce to interface only to avoid dealing with imports
interface Fallout {
    function Fal1out() external payable;

    function allocate() external payable;

    function sendAllocation(address payable allocator) external;

    function collectAllocations() external;

    function allocatorBalance(address allocator) external view returns (uint256);
}
