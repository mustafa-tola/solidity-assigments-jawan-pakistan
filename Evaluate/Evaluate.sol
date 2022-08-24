pragma solidity ^0.8.15; //defines the version of solidity to be used

contract Evaluate {
    function evaluate(int a,int b) public pure returns (int) {
        int result = (a - b) - (a + b);
        return result;
    }
}