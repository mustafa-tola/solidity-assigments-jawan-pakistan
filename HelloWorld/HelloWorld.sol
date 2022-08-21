pragma solidity ^0.8.15;

contract HelloWorld {
    string text = "Hello World";
    function helloWorld() public view returns (string memory) {
        return (text);
    }
}