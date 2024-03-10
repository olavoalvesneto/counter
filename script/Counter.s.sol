// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
    Counter counter;

    function setUp() public {}

    function run() public {
        vm.broadcast(0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80);

        console.log("ADDRESS :: ", address(counter));

        counter = new Counter;
        counter.setNumber(99);
        console.log(counter.getValue());

        counter.increment();
        console.log(counter.getValue());

        vm.broadcast();
    }
}
