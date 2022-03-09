// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TokenERC20 is ERC20 {
    constructor(uint256 _initialSupply, string memory _token_name, string memory _token_symbol) public ERC20(_token_name, _token_symbol) {
        _mint(msg.sender, _initialSupply);
    }
}