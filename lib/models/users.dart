class User {
  int id;
  String name;
  String email;
  String password;
  String nationality;
  String university;
  String address;
  int contact;
  get _id => id;
  set Id(value) => id = value;

  get _name => name;
  set Name(value) => name = value;

  get _email => email;
  set Email(value) => email = value;

  get _password => password;
  set Password(value) => password = value;

  get _nationality => nationality;
  set Nationality(value) => nationality = value;

  set University(value) => university = value;

  get _address => address;
  set Address(value) => address = value;

  get _contact => contact;
  set Contact(value) => contact = value;
  void setname(String value) {
    name = value;
  }

  User(String Name, String Email, String Password, String Nationality,
      String University, String Address, int Contact)
      : name = Name,
        email = Email,
        password = Password,
        nationality = Nationality,
        university = University,
        address = Address,
        contact = Contact;

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    nationality = json['nationality'];
    university = json['university'];
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
    data['university'] = this.university;
    data['address'] = this.address;
    data['contact'] = this.contact;
    return data;
  }
}
