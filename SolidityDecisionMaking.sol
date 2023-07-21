// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract DecisionMaking
{
  
    // If... else.. if Stmt

    function getNumberState(int _number) pure public returns (string memory)
    {
        string memory result;

        if(_number > 0)
        {
            result="Number is POSITIVE";
        }
        else if(_number == 0)
        {
            result = "Number is ZERO";
        }
        else 
        {
            result = "Number is NEGATIVE";
        }

        return result;
    }

}