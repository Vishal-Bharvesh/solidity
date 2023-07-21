// SPDX-License-Identifier: GPL-3.0

// 1
pragma solidity >=0.8.2 <0.9.0;

// 2
contract MyContract
{

    // 3 - State (Storage)
    uint private digit1;
    uint private digit2;
    uint public maxval;

    //4 - function

    function setDigit1(uint _value )   public payable 
    {
        digit1=_value;
    }

    function setDigit2(uint _value) public payable 
    {
        digit2=_value;
    }

    function getMaxValue() public returns(uint)
    {
        if(digit1 > digit2)
            maxval=digit1;
        else if(digit2 > digit1)
            maxval=digit2;
        else
            maxval=digit1;

        return maxval;
    }

}