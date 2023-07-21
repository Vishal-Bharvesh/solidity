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

    uint public result;

    function getAddition() public 
    {
        result = digit1 + digit2;
    }

    function viewResult() view public  returns(uint)
    {
        return result;
    }    

}

