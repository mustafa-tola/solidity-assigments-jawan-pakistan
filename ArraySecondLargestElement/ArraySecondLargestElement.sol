// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day2 {
    function findMax(int[] memory array,int length) private pure returns (int,int) {
        int temp = array[0];
        int ind = 0;
        for (int i = 0;i < length;i++) {
            if (array[uint(i)] > temp) {
                temp = array[uint(i)];
                ind = int(i);
            }
        }
        return (temp,ind);
    }

    function secondMax(int[] memory array,int length) public pure returns (int,int) {
        int max;
        int ind;
        (max,ind) = findMax(array,length);
        delete array[uint(ind)];
        length -= 1;
        (max,ind) = findMax(array,length);
        return (max,ind);
    }   
}
