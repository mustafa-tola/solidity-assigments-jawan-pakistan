pragma solidity ^0.8.15;

contract Find {

    modifier checkingNum(int a) {
        if(a > 0) { 
            _;
        }
    }

    function find(int a) public checkingNum(a) pure returns (int ab) {
        return a % 3;
    }
}