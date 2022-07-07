pragma solidity ^0.4.25;

contract ZombieFactory {
    uint256 dnaModulus = 10**dnaDigits;

    struct Zombie {
        string name;
        uint256 dna;
    }
    Zombie[] public zombies;
}
