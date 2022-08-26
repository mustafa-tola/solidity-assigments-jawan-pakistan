pragma solidity ^0.8.16;

contract DigitSum {
    int256 firstNum;
    int256 secondNum;
    int256 thirdNum;

    function S(int256 n) private view returns (int256) {
        if (n == thirdNum) {
            return thirdNum;
        } else if (n == secondNum) {
            return secondNum;
        } else if (n == firstNum) {
            return firstNum;
        } else {
            return S(n - 1) + S(n - 2) + S(n - 3);
        }
    }

    function nthTerm(
        int256 n,
        int256 a,
        int256 b,
        int256 c
    ) public returns (int256 abc) {
        firstNum = a;
        secondNum = b;
        thirdNum = c;
        return S(n);
    }
}
