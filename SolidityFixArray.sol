// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MyArray
{
    //Fixed Size
    //default index       0 1 2 3 4 
    uint[5] arrNumbers; // = [1,1,1,1,1];

    uint constant LIMIT=5;


    function setValues(uint index, uint _data) public  returns(string memory) {
       if( index >= LIMIT )
        {
            return " INVVALID INDEX POS....";
        }
        else {
            arrNumbers[index] = _data;
            return "Set action done Successfully...";
        }
       
        
    }

    function getValue(uint index) view public returns(uint)
    {
        if( index >= LIMIT )
        {
            return 0;
        }
        else {
            return  arrNumbers[index];
        }
    }

}