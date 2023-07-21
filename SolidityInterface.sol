// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

interface ArithOpeartion
{
    //skeleton of a smart contract

    function firstDigit(uint _value) external;
    function secondDigit(uint _value) external;
    function executeAction() external;
    function getResult() external view returns(uint);
}

contract Addition is ArithOpeartion
{
    uint public digit1;
    uint public digit2;
    uint public result;

    function firstDigit(uint _value) public 
    {
        digit1=_value;
    }

    function secondDigit(uint _value) public 
    {
        digit2=_value;
    }

    function executeAction() public 
    {
        result = digit1 + digit2;
    }

    function getResult() public view returns(uint)
    {
        return result;
    }

}

contract Subtraction is ArithOpeartion
{
    uint public number1;
    uint public number2;
    uint public subvalue;

    
    function firstDigit(uint _value) public
    {
        number1=_value;
    }
    function secondDigit(uint _value) public 
    {
        number2=_value;
    }
    function executeAction() public 
    {
        if(number1>number2)
            subvalue= number1 - number2;
        else 
            subvalue = number2 - number1;
    }
    function getResult() public  view returns(uint)
    {
        return subvalue;
    }
}


contract ExecuteArithOpeartion
{
    ArithOpeartion arith;

    function executeTask(uint action, uint _value1, uint _value2) public  returns (uint) 
    {
        if(action==1)
        {
            arith= new Addition();
        }
        else if(action==2)
        {
            arith= new Subtraction();
        }

        // execute
        arith.firstDigit(_value1);
        arith.secondDigit(_value2);
        arith.executeAction();
        return arith.getResult();


    }

}