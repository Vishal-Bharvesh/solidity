// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MyMapping
{
    // Mapping Syntax
    //mapping(KeyDT => ValueDT)
    // State DT/VAR..
    // HashTable...
    mapping(uint => string) public myList;
    uint mapkey;

    constructor()
        {
            //Startup Key Value.
            mapkey=1;
        }

    //collection
    function mapMyString(string memory value) public {

           //myList["KEY"] = VALUE 
           myList[mapkey]= value;
           nextkey();
    }

    function nextkey() private 
    {
        mapkey++;
    }

    function valueAt(uint key) view public returns (string memory)
    {
        string memory myvalue="";
        if(key>=mapkey)  
        {
            myvalue = "No string Value Found...";
        }
        else 
        {
            myvalue =  myList[key];
        }
        
        return myvalue;
    }


}