// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract Day3 {
    function max(uint num1,uint num2) private pure returns (uint) {
        if (num1 > num2) {
            return num1;
        }
        else {
            return num2;
        }
    }
    function hcf(uint num1,uint num2) public pure returns (uint) {
        uint maxDivisor = 1;
        for (uint i = 2;i < max(num1,num2) / 2;i++) {
            if (num1 % i == 0 && num2 % i == 0 && maxDivisor < i) {
                maxDivisor = i;
            }
        }
        return maxDivisor;
    } 
}