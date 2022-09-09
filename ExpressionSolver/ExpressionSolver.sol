// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day1 {
  function power(uint x,uint y) private pure returns (uint) {
        uint result = x;
        for(uint i = 1;i < y;i++) {
            result *= x;
        }
        return result;
  }

  function expression(uint x,uint n) public pure returns (uint) {
    uint sum = 1 + x;
    for (uint i = 2;i <= n;i++) {
        sum += power(x,i);
    }
    return sum;
  }
}