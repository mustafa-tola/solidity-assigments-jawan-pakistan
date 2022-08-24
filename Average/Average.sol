pragma solidity ^0.8.15; //defines the version of solidity to be used

contract Average {

    modifier checkingNums(int a,int b,int c) {
        if(a > 0 && b > 0 && c > 0) { 
            _;
        }
    }

    function find(int a,int b,int c) public checkingNums(a,b,c) pure returns (int ab) {
        return (a + b + c)/2;
    }
}