// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MyContract
{
    //State Level

    int public stateData;

    function myDataVar(int _data) public 
    {
        //Local Var
        int myvar;

        myvar = _data * 2;
        stateData = myvar;

    }

    function getStateData() view public returns (int)
    {
        return stateData;
    }

}