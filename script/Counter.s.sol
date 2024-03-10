// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterScript is Script {
    Counter counter;

    function setUp() public {}

    function run() public {
        vm.broadcast();

        console.log("ADDRESS :: ", address(counter));

        counter = new Counter;
        counter.setNumber(99);

        console.log(counter.getValue());

        counter.increment(100);

        console.log(counter.getValue());

    }
}
