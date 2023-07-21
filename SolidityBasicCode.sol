// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract BasicContract
    {

        //State - Data
        int public value;


        //contruct
        constructor() 
        {
            value=100;
        }

        //code - function (Set / Get)
        function setValue(int _value) public 
        {
            value=_value;
        }

        function getValue() view public returns (int)
        {
            return value;
        }

    }