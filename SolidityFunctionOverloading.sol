// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MyFunctions
{
 
    //Overloading
    // 1) Diff Num of Arg
    // 2) Diff Seq. of Arg
    // 3) Diff Type of Arg

    function getAddition(uint _val1 , uint _val2) pure private returns(uint)
    {
        uint result=_val1 + _val2;
        return result;
    }

    function getAddition(uint _val1 , uint _val2, uint _val3) pure private returns(uint)
    {
        uint result=_val1 + _val2 + _val3;
        return result;
    }

    function getAddition(uint _val1 , uint _val2, uint _val3, uint _val4) pure private returns(uint)
    {
        uint result=_val1 + _val2 + _val3 + _val4;
        return result;
    }


    function executeAction() pure public returns(uint)
    {
       return  getAddition(10,20,30,40);

    }

}

