// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract ArraySum {
   function sumarray(int[] memory array,int length) public pure returns (int) {
        int sum = 0;
        for (uint i = 0;i < uint(length);i++) {
            sum += array[i];
        }
        return sum;
   }
}
