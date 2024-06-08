// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Vault is ERC4626 {
    constructor(IERC20 _asset) ERC4626(_asset) ERC20("Vault Hexbyte Token", "vHT")
}
