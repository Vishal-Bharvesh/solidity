// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MyStruct
{
    //struct with arrays
    // Declare
    struct ELibrary
    {
        string isbn;
        string bookname;
        uint price;
    }

    ELibrary[3] public bookList;
    uint index;

    constructor()
    {
        index=0;
    }
    function nextBook() private 
    {
        index++;
    }

    function setBookRecord(string memory _isbn, string memory _bookname, uint _price) public 
    {
        bookList[index] = ELibrary(_isbn,_bookname,_price);
        nextBook();
    }

    function getBookRecord(uint _index) public view returns(ELibrary memory)
    {
        ELibrary memory temp = bookList[_index];

        return temp;
    }
    


}