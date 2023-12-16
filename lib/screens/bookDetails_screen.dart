import 'package:flutter/material.dart';
import 'package:flutter_books_api/Models/book.dart';

class bookDetailScreen extends StatelessWidget {
  final Book book;
  bookDetailScreen({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(book.title)),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(book.description),
            SizedBox(height: 10),
            Text('Villains: ${book.villains.join(', ')}'),
          ],
        ),
      ),
    );
  }
}
