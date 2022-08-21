pragma solidity ^0.8.15; //defines the version of solidity to be used

contract inbox {
    int number = 10;

    function returnStateVariable() public view returns (int) {
        return (number);
    }

    function returnLocalVariable() public pure returns (int abc) {
        int number1 = 20;
        return (number1);
    }
}