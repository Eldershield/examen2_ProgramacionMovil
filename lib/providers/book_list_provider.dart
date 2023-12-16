import 'package:flutter/material.dart';
import 'package:flutter_books_api/Models/book.dart';
import 'package:flutter_books_api/services/book_service.dart';

class BookListProvider with ChangeNotifier {
  final BookService _bookService = BookService();
  List<Book> _books = [];
  List<Book> get books => _books;
  void fetchBook() async {
    _books = await _bookService.getBooks();
    notifyListeners();
  }
}
