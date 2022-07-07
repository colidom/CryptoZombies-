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

    function _generateRandomDna(string _str) private view returns (uint256) {
        uint256 rand = uint256(keccak256(_str));
        return rand % dnaModulus;
    }
}
