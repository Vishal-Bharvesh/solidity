// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract UserAccount
{

    //State Level Varibles..
    string userid;
    uint accBalance;
    address useraddress;


    //Construct
    constructor(uint _balance,string memory _userid)
    {
        userid=_userid;
        accBalance=_balance;
        useraddress=msg.sender;
    }


    function getUserDetails() view public returns(string memory, uint, address)
    {
        return (userid,accBalance,useraddress);
    }
    
}