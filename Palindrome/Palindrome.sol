pragma solidity ^0.8.16;

contract Palindrome {
    function palindrome(uint n) public pure returns (uint) {
        uint num = n; 
        uint rev = 0;
        while (n != 0) {
            rev = (rev*10) + (n%10);
            n = n / 10;
        }
        if(num == rev) {
            return 1;
        }
        else {
            return 0;
        }
    }
}