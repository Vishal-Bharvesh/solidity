// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MyContract
{
    //state level
    string public myStr;

    constructor()
    {
        myStr='Contact Block has been Created Successfuly..!!!';
    }

    function setMyString(string memory _mystr) public 
    {
        myStr=_mystr;
    }

    function getMyString() view public returns(string memory)
    {
        return myStr;
    }


    function exeStringBytes() public pure returns(string memory) 
    {
        bytes memory bstr = new bytes(10);
        bstr="\"Solidity\" Language";
        string memory message = string(bstr);
        return message;

    }


}