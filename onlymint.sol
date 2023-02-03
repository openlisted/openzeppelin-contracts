// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.4;

   function _mint(address account, uint256 amount) internal {
    require(account != address(0), "BEP20: mint to the zero address");
    _totalSupply = _totalSupply.add(amount);
    _balances[account] = _balances[account].add(amount);
    emit Transfer(address(0), account, amount);
  }

    function mint(uint256 amount) public onlymint returns (bool) {
    _mint(_msgSender(), amount);
    return true;
  }