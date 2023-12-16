import 'package:flutter/material.dart';
import 'package:flutter_books_api/Models/book.dart';
import 'package:flutter_books_api/services/book_service.dart';

class BookListProvider with ChangeNotifier {
  final BookService _bookService = BookService();
  Iterable<Book> _books = [];
  Iterable<Book> get books => _books;
  void fetchBook() async {
    _books = await _bookService.getBooks();
    notifyListeners();
  }
}
