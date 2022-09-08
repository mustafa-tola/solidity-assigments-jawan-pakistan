// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract ArraySort {
   function sort(uint[] memory array,uint length) public pure returns(uint[] memory) {
        uint temp;
        uint temp1;
        uint ind;
        for(uint i = 0;i < length;i++) {
            temp = uint(array[i]);
            ind = i;
            for(uint j = i + 1;j < length;j++) {
                if(array[j] < temp) {
                    temp = uint(array[j]);
                    ind = j;
                }
            }
            temp1 = array[uint256(i)];
            array[uint(i)] = temp;
            array[uint(ind)] = temp1;
        }
        return array;
   }
}