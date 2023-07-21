// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MyContract
{
    //Error Handling

    uint digit;
    address public blockuser;

    constructor()
    {
        blockuser=msg.sender;
    }

    function getInput(uint _value) public 
    {
        if(_value<=0)
        {
            revert("Invalid Argument has been given...");
        }
        else 
        {
            digit=_value;
        }
    }

   
function getSecondInput(uint _value,address useraddress) public {
    // Input Range : 10  - 50
    //Throw + Catch
    require(_value>=10 && _value<=50 , "About : Invalid Arg has been Given..." );
    require(useraddress == blockuser , "About : Invalid User" );
    
    digit=_value;
}

function getThirdDigit(uint _value) public {
    
    assert(_value>=10 && _value<=50); // throw (Abort)
    digit=_value;

}


}