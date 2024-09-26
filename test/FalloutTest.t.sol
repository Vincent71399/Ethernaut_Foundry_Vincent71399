// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;
// fix for legacy version of test
pragma experimental ABIEncoderV2;

import {Test} from "forge-std/Test.sol";
import {Fallout} from "../src/puzzles/2/Fallout.sol";

contract FalloutTest is Test {
    Fallout internal puzzleContract;

    address owner = makeAddr("owner");
    address player = makeAddr("player");

    uint256 constant STARTING_USER_BALANCE = 100 ether;

    function setUp() public {
        vm.startPrank(owner);
        puzzleContract = new Fallout();
        vm.stopPrank();

        vm.deal(player, STARTING_USER_BALANCE);
    }

    function testSolveFallout() public {
        vm.startPrank(player);
        puzzleContract.Fal1out();
        assertEq(puzzleContract.owner(), player);
        vm.stopPrank();
    }
}