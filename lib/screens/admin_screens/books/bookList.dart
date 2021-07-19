import 'dart:ui';
import 'package:i_library/services/book_service.dart';
import 'package:i_library/models/books.dart';
import 'package:flutter/material.dart';
import 'package:i_library/screens/appBar.dart';
import 'package:i_library/screens/admin_screens/register_book/registerBook.dart';
import "package:i_library/screens/admin_screens/books/bookDetails.dart";

class bookList extends StatefulWidget {
  static Route route() => MaterialPageRoute(builder: (context) => bookList());
  @override
  _bookList createState() => _bookList();
}

class _bookList extends State<bookList> {
  List<Book> _bks = List<Book>();
  void initState() {
    BookService.fetchBook().then((value) {
      setState(() {
        _bks.addAll(value);
      });
    });
    super.initState();
  }

  void _doNothing() {}
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
              toolbarHeight: 80,
              title: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "I-LIBRARY",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.notifications_active, size: 30),
                    ],
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              )),
              bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.library_books_outlined)),
                  Tab(icon: Icon(Icons.check_box)),
                  Tab(icon: Icon(Icons.payment)),
                ],
              )),
          body: TabBarView(
            children: [
              Container(
                child: Center(
                  child: Center(
                    child: Column(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 200.0,
                            child: ListView.builder(
                              itemCount: _bks.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Card(
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              10, 10, 10, 10)),
                                      RaisedButton.icon(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      BookDetails(
                                                          _bks[index])));
                                        },
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0))),
                                        padding:
                                            EdgeInsets.fromLTRB(40, 10, 40, 10),
                                        label: Text(
                                          "${_bks[index].title}",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                        icon: Icon(
                                          Icons.library_books,
                                          color: Colors.white,
                                        ),
                                        textColor: Colors.white,
                                        color: Colors.white,
                                      ),
                                      (_bks[index].available)
                                          ? Text("available")
                                          : Text("rented")
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Center(
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                        Expanded(
                          child: SizedBox(
                            height: 200.0,
                            child: ListView.builder(
                              itemCount: _bks.length,
                              itemBuilder: (BuildContext context, int index) {
                                if (_bks[index].available) {
                                  return Card(
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 10, 10, 10)),
                                        RaisedButton.icon(
                                          onPressed: null,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0))),
                                          padding: EdgeInsets.fromLTRB(
                                              40, 10, 40, 10),
                                          label: Text(
                                            "${_bks[index].title}",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20),
                                          ),
                                          icon: Icon(
                                            Icons.library_books,
                                            color: Colors.white,
                                          ),
                                          textColor: Colors.white,
                                          color: Colors.white,
                                        ),
                                        (_bks[index].available)
                                            ? Text("available")
                                            : Text("rented")
                                      ],
                                    ),
                                  );
                                } else {
                                  return SizedBox(height: 0);
                                }
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Center(
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                        Expanded(
                          child: SizedBox(
                            height: 200.0,
                            child: ListView.builder(
                              itemCount: _bks.length,
                              itemBuilder: (BuildContext context, int index2) {
                                if (!_bks[index2].available) {
                                  return Card(
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 10, 10, 10)),
                                        RaisedButton.icon(
                                          onPressed: null,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0))),
                                          padding: EdgeInsets.fromLTRB(
                                              40, 10, 40, 10),
                                          label: Text(
                                            "${_bks[index2].title}",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20),
                                          ),
                                          icon: Icon(
                                            Icons.library_books,
                                            color: Colors.white,
                                          ),
                                          textColor: Colors.black,
                                          color: Colors.white,
                                        ),
                                        (_bks[index2].available)
                                            ? Text("available")
                                            : Text("rented")
                                      ],
                                    ),
                                  );
                                } else
                                  return SizedBox(height: 0);
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniStartDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: _doNothing,
            child: Text('back'),
            mini: true,
            shape: RoundedRectangleBorder(),
          ),
        ));
  }
}
