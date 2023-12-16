import 'package:flutter/material.dart';
import 'package:flutter_books_api/providers/book_list_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_books_api/screens/book_listScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BookListProvider()),
      ],
      child: MaterialApp(
        title: 'Stephen King Library',
        theme: ThemeData(
          primarySwatch: Colors.teal,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Your App Title'),
          ),
          body:
              bookListScreen(), // Ensure bookListScreen is embedded within a Material widget
        ),
      ),
    );
  }
}
