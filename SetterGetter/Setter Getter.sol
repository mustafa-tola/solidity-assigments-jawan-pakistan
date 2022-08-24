pragma solidity ^0.8.15; //defines the version of solidity to be used

contract inbox {
    uint number;

    function set(uint num) public {
        number = num;
    }

    function get() public view returns (uint num) {
        return number;
    }
}