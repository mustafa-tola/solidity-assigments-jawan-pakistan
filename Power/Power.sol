pragma solidity ^0.8.16;

contract Power {
    function power(uint x,uint y) public pure returns (uint) {
        uint result = x;
        for(uint i = 1;i < y;i++) {
            result *= x;
        }
        return result;
    }
}