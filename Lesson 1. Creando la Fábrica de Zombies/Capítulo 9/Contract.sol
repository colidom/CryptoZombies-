pragma solidity ^0.4.25;

contract ZombieFactory {
    uint256 dnaModulus = 10**dnaDigits;

    struct Zombie {
        string name;
        uint256 dna;
    }
    Zombie[] public zombies;

    function _createZombie(string _name, uint256 _dna) private {
        zombies.push(Zombie(_name, _dna));
    }
}
