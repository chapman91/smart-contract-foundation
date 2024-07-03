// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

// import statement | Tool
import {Script} from "forge-std/Script.sol";
// import statement | Contract to be deployed
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        // Everything inside the broadcast is what is being deployed to the blockchain
        vm.startBroadcast();
        // 'new' key word creates a contract in Solidity & between the vm start broadcast
        SimpleStorage simpleStorage = new SimpleStorage();

        vm.stopBroadcast();

        return simpleStorage;
    }
}
