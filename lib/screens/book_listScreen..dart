import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_books_api/providers/book_list_provider.dart';

class bookListScreen extends StatefulWidget {
  @override
  _bookListScreenState createState() => _bookListScreenState();
}

class _bookListScreenState extends State<bookListScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() =>
        Provider.of<BookListProvider>(context, listen: false).fetchBook());
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BookListProvider>(
      builder: (context, bookListProvider, child) {
        if (bookListProvider.books.isEmpty) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: bookListProvider.books.length,
          itemBuilder: (context, index) {
            final book = bookListProvider.books[index];
            return ListTile(
              title: Text(book.title),
              subtitle: Text(book.description),
              onTap: () {
                // Implement navigation to book details
              },
            );
          },
        );
      },
    );
  }
}
