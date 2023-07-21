// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract MyStruct
{
    //struct
    // Declare
    struct ELibrary
    {
        string isbn;
        string bookname;
        uint price;
    }

    ELibrary public book;

    function setBookRecord(string memory _isbn, string memory _bookname, uint _price) public 
    {

        // 1
        book.isbn=_isbn;
        book.bookname = _bookname;
        book.price = _price;

        //2
        book = ELibrary(_isbn,_bookname,_price);
    }

    


}