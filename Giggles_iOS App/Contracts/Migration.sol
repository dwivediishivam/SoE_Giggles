// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Migration of data from owner to blockchain
//
// reference from - https://github.com/saren-io/ethereum-data-share

contract Migrations {
  address public owner;
  uint public lastCompletedMigration;

  constructor() public {
    owner = msg.sender;
  }

  modifier restricted() {
    if (msg.sender == owner) _;
  }

  function setCompleted(uint completed) public restricted {
    lastCompletedMigration = completed;
  }

  function upgrade(address new_address) public restricted {
    Migrations upgraded = Migrations(new_address);
    upgraded.setCompleted(lastCompletedMigration);
  }
}
