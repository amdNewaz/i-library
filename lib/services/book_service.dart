import 'rest.dart';

import '../models/books.dart';

class BookService {
  static Future fetchBook() async {
    var _books = List<Book>();
    var data = await Rest.get('allBook');
    for (var bks in data['data']) {
      _books.add(Book.fromJson(bks));
    }
    return _books;
  }
}
