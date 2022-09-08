// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract NumberReverse {
    function reverseDigit(uint n) public pure returns (uint) {
        uint reverse;
        while (n > 0) {
            reverse = reverse * 10 + n%10;
            n /= 10;
        }
        return reverse;
    }
}
