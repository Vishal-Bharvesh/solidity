// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MyDynamicArray
{
    // Dynamic arrays
    //POP  - LIFO

    string[] names;

    function setName(string memory _name) public {
        //PUSH
        names.push(_name);
    }

    function popName() public 
    {
        names.pop();  // LI FO
    }


    function getValue(uint index) public view returns(string memory)
    {
        string memory value;
        
        if( index < names.length )
            {
                    value= names[index];
            }
        else 
            {
                   value="Out of Array...";
            }
        return value;
    }


}