class User {
  int id;
  String name;
  String email;
  String password;
  String nationality;
  String address;
  int contact;
  get _id => id;
  set _id(value) => id = value;

  get _name => name;
  set _name(value) => name = value;

  get _email => email;
  set _email(value) => email = value;

  get _password => password;
  set _password(value) => password = value;

  get _nationality => nationality;
  set _nationality(value) => nationality = value;

  get _address => address;
  set _address(value) => address = value;

  get _contact => contact;
  set _contact(value) => contact = value;
  User(
      {this.id,
      this.name,
      this.email,
      this.password,
      this.nationality,
      this.address,
      this.contact});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    nationality = json['nationality'];
    address = json['address'];
    contact = json['contact'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['nationality'] = this.nationality;
    data['address'] = this.address;
    data['contact'] = this.contact;
    return data;
  }
}
