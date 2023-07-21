// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MyContract
{
    // Only on State Level Var.
   
   // private
    int private data1private;
   
   // internal   -- DEFAULT
   int internal data2internal;

   //public
   int public data3public;

   constructor()
   {
       data1private=0;
       data2internal=0;
       data3public=0;

   }

    function getData1() view public returns(int)
    {
        return data1private;
    }


}


contract MySecondContract is MyContract
{

    function getData2() view public returns(int)
    {
        return data2internal;
    }

}