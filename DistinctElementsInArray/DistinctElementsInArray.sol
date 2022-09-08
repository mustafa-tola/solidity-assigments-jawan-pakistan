// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day4 {
    function distinct(uint[] memory array,uint length) public pure returns (int) {
        int distinctElems;
        bool isDistinct = true;
        for (uint i = 0;i < length;i++) {
            for(int j = int(i) - 1;j >= 0;j--) {
                if(array[i] == array[uint(j)]) {
                    isDistinct = false;
                }
            }
            if(isDistinct) {
                distinctElems += 1;
            }
            isDistinct = true;
        }
        return distinctElems;
    }
}
