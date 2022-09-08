pragma solidity ^0.8.16;

contract PrimeNumberChecker {
    function prime(uint n) public pure returns (uint) {
        if (n % 2 == 0) {
            return 0;
        }
        else {
            for (uint i = 3;i <= n / 2;i += 2) {
                if (n % i == 0) {
                    return 0;
                }
            }
            return 1;
        }
    }
}