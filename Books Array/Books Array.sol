// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract Day4 {
    struct Book {
        string title;
        string author;
        uint256 book_id;
    }
    Book book;
    Book[] books;
    uint counter = 0;
    function setBook(string memory title,string memory author,uint id) public {
        book = Book(title,author,id);
        books.push(book);
        counter += 1;
    }
    function getBook(uint id) public view returns (Book memory) {
        return books[id];
    }
}