// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract ArrayReverse {
    function reverseArray(uint[] memory array,uint length) public pure returns (uint[] memory) {
        uint temp;
        for (uint i = 0;i < length/2;i++) {
            temp = array[i];
            array[i] = array[length - i - 1];
            array[length - i - 1] = temp; 
        }
        return array;
    }
}
