import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:i_library/screens/appBar.dart';
import 'package:i_library/screens/admin_screens/register_book/registerBook.dart';

class bookList extends StatefulWidget {
  @override
  _bookList createState() => _bookList();
}

class _bookList extends State<bookList> {
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
                        Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                        RaisedButton.icon(
                          onPressed: null,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                          label: Text(
                            "BookTitle 1       avalaible",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          icon: Icon(
                            Icons.library_books,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          color: Colors.white,
                        ),
                        RaisedButton.icon(
                          onPressed: null,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                          label: Text(
                            "BookTitle  2       avalaible",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          icon: Icon(
                            Icons.library_books,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          color: Colors.white,
                        ),
                        RaisedButton.icon(
                          onPressed: null,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                          label: Text(
                            "BookTitle  3       avalaible",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          icon: Icon(
                            Icons.library_books,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          color: Colors.white,
                        ),
                        RaisedButton.icon(
                          onPressed: null,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                          label: Text(
                            "BookTitle  4       avalaible",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          icon: Icon(
                            Icons.library_books,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          color: Colors.white,
                        ),
                        RaisedButton.icon(
                          onPressed: null,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                          label: Text(
                            "BookTitle  5       rented    ",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          icon: Icon(
                            Icons.library_books,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          color: Colors.white,
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
                        RaisedButton.icon(
                          onPressed: null,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                          label: Text(
                            "BookTitle 1       avalaible",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          icon: Icon(
                            Icons.library_books,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          color: Colors.white,
                        ),
                        RaisedButton.icon(
                          onPressed: null,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                          label: Text(
                            "BookTitle  2       avalaible",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          icon: Icon(
                            Icons.library_books,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          color: Colors.white,
                        ),
                        RaisedButton.icon(
                          onPressed: null,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                          label: Text(
                            "BookTitle  3       avalaible",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          icon: Icon(
                            Icons.library_books,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          color: Colors.white,
                        ),
                        RaisedButton.icon(
                          onPressed: null,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                          label: Text(
                            "BookTitle  4       avalaible",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          icon: Icon(
                            Icons.library_books,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          color: Colors.white,
                        ),
                        RaisedButton.icon(
                          onPressed: null,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                          label: Text(
                            "BookTitle  6       avaiable",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          icon: Icon(
                            Icons.library_books,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          color: Colors.white,
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
                        RaisedButton.icon(
                          onPressed: null,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                          label: Text(
                            "BookTitle 5       rented",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          icon: Icon(
                            Icons.library_books,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          color: Colors.white,
                        ),
                        RaisedButton.icon(
                          onPressed: null,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                          label: Text(
                            "BookTitle  7       rented",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          icon: Icon(
                            Icons.library_books,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          color: Colors.white,
                        ),
                        RaisedButton.icon(
                          onPressed: null,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                          label: Text(
                            "BookTitle  8       rented",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          icon: Icon(
                            Icons.library_books,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          color: Colors.white,
                        ),
                        RaisedButton.icon(
                          onPressed: null,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                          label: Text(
                            "BookTitle  9       rented",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          icon: Icon(
                            Icons.library_books,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          color: Colors.white,
                        ),
                        RaisedButton.icon(
                          onPressed: null,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                          label: Text(
                            "BookTitle  10       rented  ",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          icon: Icon(
                            Icons.library_books,
                            color: Colors.white,
                          ),
                          textColor: Colors.white,
                          color: Colors.white,
                        ),
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
