import 'dart:ui';
import 'package:i_library/models/books.dart';
import 'package:flutter/material.dart';
import 'package:i_library/screens/appBar.dart';
import 'package:i_library/services/book_service.dart';

class BookDetails extends StatefulWidget {
  static Book book;
  Book _book;
  static int idx;
  @override
  BookDetails(Book bk) {
    _book = bk;
    book = bk;
  }
  static Route route() =>
      MaterialPageRoute(builder: (context) => BookDetails(book));
  _BookDetails createState() => _BookDetails();
}

class _BookDetails extends State<BookDetails> {
  /* List<Book> _bks = List<Book>();

  void initState() {
    BookService.fetchBook().then((value) {
      setState(() {
        _bks.addAll(value);
      });
    });
    super.initState();
  }*/

  void _doNothing() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        child: Column(children: [
          Padding(padding: EdgeInsets.fromLTRB(10, 40, 10, 10)),
          Row(children: [
            Padding(padding: EdgeInsets.fromLTRB(5, 40, 40, 10)),
            Text("Book Title:",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                )),
            Text(
              widget._book.title,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
              ),
            )
          ]),
          Row(children: [
            Padding(padding: EdgeInsets.fromLTRB(5, 40, 40, 10)),
            Text("Author:",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                )),
            Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 10)),
            Text(widget._book.author,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                ))
          ]),
          Row(children: [
            Padding(padding: EdgeInsets.fromLTRB(5, 40, 40, 10)),
            Text("ISBN:",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                )),
            Text(widget._book.iSBN,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                ))
          ]),
          Row(children: [
            Padding(padding: EdgeInsets.fromLTRB(5, 40, 40, 10)),
            Text("Genre:",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                )),
            Text(widget._book.genre,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                ))
          ]),
          Row(children: [
            Padding(padding: EdgeInsets.fromLTRB(5, 40, 40, 10)),
            Text("Book Condition :",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                )),
            Text(widget._book.bookCondition,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                ))
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton.icon(
              onPressed: _doNothing,
              icon: Icon(Icons.circle),
              label: Text("Declince"),
            ),
            ElevatedButton.icon(
              onPressed: _doNothing,
              icon: Icon(Icons.circle),
              label: Text("Approve"),
            )
          ])
        ]),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniStartDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: _doNothing,
        child: Text('back'),
        mini: true,
        shape: RoundedRectangleBorder(),
      ),
    );
  }
}
