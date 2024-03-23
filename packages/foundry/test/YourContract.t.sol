// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../contracts/YourContract.sol";

contract YourContractTest is Test {
    YourContract public yourContract;

    function setUp() external {
        yourContract = new YourContract();
    }

    function testStoreNumber() public {
        uint256 expectedFavoiteNumber = 777;

        yourContract.store(expectedFavoiteNumber);

        assert(expectedFavoiteNumber == yourContract.retrieve());
    }

    function testCreatePerson() public {
        string memory name = "Juan";
        uint256 expectedNumber = 25;

        yourContract.addPerson(name, expectedNumber);

        uint256 retreievedNumber = yourContract.nameToFavoriteNumber(name);
        assert(retreievedNumber == expectedNumber);
    }
}
