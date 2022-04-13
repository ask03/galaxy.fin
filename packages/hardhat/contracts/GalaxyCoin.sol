pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract GalaxyCoin is ERC20Burnable, Ownable{

  string public _name = "GalaxyCoin";
  string public _symbol = "GALX";
  uint256 public _decimals = 18;
  uint256 public _initialSupply = 1000000000 * (uint256(decimals()));

  constructor () ERC20(_name, _symbol) {
    _mint(msg.sender, _initialSupply);
  }

}
