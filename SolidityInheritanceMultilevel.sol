// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract StorageArea
{
    uint internal  digit1;
    uint internal  digit2;

    function setFirstDigit(uint _value) public 
    {
        digit1=_value;
    }

    function setSecondDigit(uint _value) public 
    {
        digit2=_value;
    }

}

//Inheritance  - IS
// Super contract : StorageArea
//Derived Contract : ArithOperation


contract ArithOperation is StorageArea
{

    uint internal  result;

    function getAddition() public 
    {
        result = digit1 + digit2;
    }

    function getSubtraction () public 
    {
        if(digit1>digit2)
        {
            result = digit1 - digit2;
        }
        else
        {
            result = digit2 - digit1;
        }
    }

}

// Super contract : ArithOperation

//Derived Contract : ViewResult
contract ViewResult is ArithOperation
{

    function viewResult() view public returns(uint)
    {
        return result;
    }

}