pragma solidity ^0.8.16;

contract DigitSum {
    function digitSum(int n) public pure returns (int) {
        int sum = 0;
        while(n > 0) {
            sum += n % 10;
            n /= 10;
        }
        return sum;
    }
}