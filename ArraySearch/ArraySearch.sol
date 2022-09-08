// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract ArraySearch {
    function search(uint[] memory array,uint length,uint search) public pure returns (int) {
        for(uint i = 0;i < length;i++) {
            if (array[i] == search) {
                return 1;
            }
        }
        return 0;
    }
}
