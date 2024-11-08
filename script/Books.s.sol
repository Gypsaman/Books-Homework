//SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import {Script,console} from 'forge-std/Script.sol';
import '../src/Books.sol';

contract DeployBooks is Script {
    Books_Contract public books;

    function run() public {
        vm.broadcast();
        books = new Books_Contract("Programming Foundry", "Cesar Garcia", 100);
    }
}