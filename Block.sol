pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Block is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Block(address _owner)  UpgradeableToken(_owner) {
    name = "Block";
    symbol = "BLK";
    totalSupply = 1000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}