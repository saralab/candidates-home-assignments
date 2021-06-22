pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "../../../STokenFunds/contracts/open-zeppelin/token/ERC20/MintableToken.sol";

contract USSWW2 is ERC20, Ownable, MintableToken{
    using SafeMath for uint256;

    constructor() public ERC20("USSWW2", "USSWW2") {
        _mint(msg.sender, 100000000 * (10 ** uint256(decimals())));
    }
}
