// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MyContract
{
    address public blockUser;
    uint digit;

    constructor()
    {
        blockUser = msg.sender;
        digit=0;
    }

    //function for testing purpose
    modifier checkUser()
    {
        require(msg.sender == blockUser,"Contract Aborted : Invalid USer Account");
        _;
    }

    modifier checkDigit(uint _value)
    {
        require(_value>=10 && _value<=99,"Contract Aborted : Value Out of Range (10-99");
        _;
    }

    function setDigit(uint _value) public checkUser() checkDigit(_value)
    {
        digit=_value;
    }
    
    function viewSquare() view public checkUser()  returns (uint) 
    {
        uint square=digit * digit;
        return square;
    }
    

}