// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MyEnum
{
    //enum
    enum OpCode{ADD,SUB,DIV,MULTI}
              // 0   1   2   3  DEFAULT

    OpCode action; 
    uint firstdigit;
    uint seconddigit;
    uint public result;

    constructor()
    {
        firstdigit=0;
        seconddigit=0;
        result=0;
    }

    function setFirstDigit(uint _value) public 
    {
        firstdigit=_value;
    }

    function setSecondDigit(uint _value) public 
    {
        seconddigit=_value;
    }

    function exeAddition() public {
        action=OpCode.ADD;
    }

    function exeSubtraction() public {
        action=OpCode.SUB;
    }
    function exeDivision() public {
        action=OpCode.DIV;
    }

    function exeMultiply() public {
        action=OpCode.MULTI;
    }
    

    function getResult() public returns(uint)
    {
        if(action == OpCode.ADD)
        {
            result = firstdigit + seconddigit;    
        }
        else if(action == OpCode.SUB)
        {
            result = firstdigit - seconddigit;
        }
        else if(action == OpCode.DIV)
        {
            result = firstdigit / seconddigit;
        }
        else {
            result = firstdigit * seconddigit;
        }
        
        return result;
    }
    

}