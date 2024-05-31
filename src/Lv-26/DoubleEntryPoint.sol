// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;



interface DelegateERC20 {
    function delegateTransfer(address to, uint256 value, address origSender) external returns (bool);
}

interface IDetectionBot {
    function handleTransaction(address user, bytes calldata msgData) external;
}

interface IForta {
    function setDetectionBot(address detectionBotAddress) external;
    function notify(address user, bytes calldata msgData) external;
    function raiseAlert(address user) external;
}


//Bot gotten from https://github.com/maAPPsDEV/double-entry-point-attack/blob/9ec694e69f7013aad1bc3acc5a9b3eb9be8d1dde/contracts/DetectionBot.sol#L27-L44
contract Bot{

    address vault = 0x5Da5F7bf9482cFED0Dd54d20FA5122bAA24b88ed;

 function handleTransaction(
    address user,
    bytes calldata /* msgData */
  ) external  {
    address to;
    uint256 value;
    address origSender;
    // decode msgData params
    assembly {
      to := calldataload(0x68)
      value := calldataload(0x88)
      origSender := calldataload(0xa8)
    }
    if (origSender == vault) {
      IForta(msg.sender).raiseAlert(user);
    }

  }

    
}