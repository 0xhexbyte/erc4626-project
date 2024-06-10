// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

// import {ERC4626} from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC4626Fees.sol";

contract Vault is ERC4626Fees {
    address payable public owner;
    uint256 public entryFeeBasisPoints;

    constructor(IERC20 _asset, uint256 _basisPoints) ERC4626(_asset) ERC20("Vault Hexbyte Token", "vHT"){
    owner = payable(msg.sender);
    entryFeeBasisPoints = _basisPoints;
    }
    
    function _entryFeeBasisPoints() internal view virtual returns (uint256) {
        return 0; // replace with e.g. 100 for 1%
    }

    function _exitFeeBasisPoints() internal view virtual returns (uint256) {
        return 0; // replace with e.g. 100 for 1%
    }

    function _entryFeeRecipient() internal view virtual returns (address) {
        return address(0); // replace with e.g. a treasury address
    }

    function _exitFeeRecipient() internal view virtual returns (address) {
        return address(0); // replace with e.g. a treasury address
    }
}
