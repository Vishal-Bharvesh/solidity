// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

//Solidity Events
contract MyContract
{

    uint digit1;
    uint digit2;
    uint result;

    //phase ONE  : Declare EVENTS
    event BlockAdded(address from);
    event FirstDigit(address from,string status,uint value);
    event SeocndDigit(address from,string status,uint value);
    event ActionProcess(address from, string status,uint opcode);



    constructor()
    {
        //phase TWO  : EVENTS EMIT...
        emit BlockAdded(msg.sender);
        digit1=0;
        digit2=0;
        result=0;
    }

    function setFirstDigit(uint _value) public 
    {
        emit FirstDigit(msg.sender, "INIT DONE", _value);
        digit1=_value;
    }

    function setSecondDigit(uint _value) public
    {
        emit SeocndDigit(msg.sender, "INIT of the second Digit mhas been DONE", _value);
        digit2=_value;
    }

    function exeAction(uint opcode) public 
    {
        string memory status;
        if(opcode==1)
        {
            result=digit1 + digit2;
            status="Addition";
        }
        else if(opcode==2)
        {
            result=digit1 - digit2;
            status="Subtraction";
        }
        else 
        {
            result=digit1 * digit2;
            status="Default : Multiply";
        }
        emit ActionProcess(msg.sender, status, opcode);
    }

    function getResult() view public returns (uint)
    {
            return result;
    }

}