pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract USSSCVN is ERC20, Ownable, MintableToken{
    using SafeMath for uint256;

    constructor() public ERC20("USSSCVN", "USSSCVN") {
        _mint(msg.sender, 100000000 * (10 ** uint256(decimals())));
    }
}
