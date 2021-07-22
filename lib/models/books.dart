class Book {
  String title;
  String author;
  String iSBN;
  String genre;
  String bookCondition;
  int available;

  Book(
      {this.title,
      this.author,
      this.iSBN,
      this.genre,
      this.bookCondition,
      this.available});

  Book.fromJson(Map<String, dynamic> json) {
    title = json['Title'];
    author = json['Author'];
    iSBN = json['ISBN'];
    genre = json['Genre'];
    bookCondition = json['Book Condition'];
    available = json['Available'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Title'] = this.title;
    data['Author'] = this.author;
    data['ISBN'] = this.iSBN;
    data['Genre'] = this.genre;
    data['Book Condition'] = this.bookCondition;
    data['Available'] = this.available;
    return data;
  }
}
