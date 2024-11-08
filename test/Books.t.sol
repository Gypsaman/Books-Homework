//SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import {Test,console} from 'forge-std/Test.sol';
import '../src/Books.sol';

contract TestBooks is Test {
    Books books;

    function setUp() public {
        books = new Books("Programming Foundry", "Cesar Garcia", 100);
    }

    function test_update_pagess() public {
        books.update_pages(200);
        assertEq(books.get_book().pages, 200);
    }

    function test_get_books() public  {
        Books.Book memory book = books.get_book();
        assertEq(book.title, "Programming Foundry");

        assertEq(book.pages, 100);
    }

}