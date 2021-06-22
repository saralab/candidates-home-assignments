pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";


contract Portfolio is Ownable {
    using SafeMath for uint256;

    //Track all Tokens in the Portfolio
    mapping(bytes32 => address) public portfolioTokens;

    constructor() public {

    }

    //Deposit Token
    function deposit(bytes32 symbol_, address address_) public payable onlyOwner {
        //Add Token to the list of Portfolio Tokens
        portfolioTokens[symbol_] = address_;
        emit Deposited(symbol_, msg.value);
    }


    //Withdraw Token
    function withdraw() onlyOwner public {
        emit Withdrew(msg.sender, address(this).balance);
    }

    //Emergency  Withdraw All Tokens
    function withdrawAllTokens(address _tokenContract) onlyOwner public {

    }

    //Show List Of All Tokens With Balances



    //Transfer Tokens For Another User
    function transfer(address _to, uint256 _value, bytes32 _symbol) public returns (bool) {
        emit Transferred(msg.sender, _to, _value);
        return true;
    }


    event Deposited(bytes32 symbol, uint256 amount);
    event Withdrew(address to, uint256 amount);
    event WithdrewAllTokens(address tokenContract, address to, uint256 amount);
    event Transferred(address tokenContract, address to, uint256 amount);
}