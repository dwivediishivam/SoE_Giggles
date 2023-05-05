// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// reference from - https://github.com/saren-io/ethereum-data-share
//
// Retiriving the file from blockchain to local system
contract File {
    // Initialize file hash
    string fileHash;

    // Write function
    function set(string memory _fileHash) public {
        fileHash = _fileHash;
    }
    // Read function
    function get() public view returns (string memory) {
        return fileHash;
    }
}
