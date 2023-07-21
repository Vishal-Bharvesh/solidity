// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MyFunctions
{
    uint square;
    uint cude;
    //function Syntax
    /*function <NAME>(args,args,args) <SCOPE> returns(DATATYPE)
    {
         return;
    }*/

    function getMyAddress() view public returns (address  )
    {
        return msg.sender;
    }

    //private
    function getSquare(uint _value) pure private returns(uint) {
        uint result = _value * _value;
        return result;
    }

    function getResult() external returns (uint)
    {
        square = getSquare(5);
        return square;
    }

    function getCube(uint _value) pure internal returns(uint)
    {
        uint result = _value * _value * _value;
        return result;
    }


}

//          D-Class         B-Class
contract MyNewContract is MyFunctions
{

    function checkAccessMode() public returns (uint)
    {
        cude = getCube(5);
        return cude;

    }

   /* function callFromBaseContract() public returns (uint) {
        return getResult();
    }*/


}