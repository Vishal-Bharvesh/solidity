// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MyContract
{
   bool token; // true / false
   int data;
   address accAddress;

   constructor()
   {
       token=false;
       data=0;
       accAddress= msg.sender;
   }

   function getAccAddress() view public returns (address)
   {
       return accAddress;
   }

   function setData(int _data) public 
   {
       data=_data;
   }

   function getData() view public returns(int)
    {
        return data;
    }

   function setToken(bool _token) public 
   {
       token=_token;
   }

   function getToken() view public returns(bool)
   {
       return token;
   }

}
