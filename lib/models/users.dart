class User {
  int _id;
  String _name;
  String _email;
  String _password;
  String _nationality;
  String _address;
  String _contact;

  get id => _id;
  set id(value) => _id = value;

  get name => _name;
  set name(value) => _name = value;

  get email => _email;
  set email(value) => _email = value;

  get password => _password;
  set password(value) => _password = value;

  get nationality => _nationality;
  set nationality(value) => _nationality = value;

  get address => _address;
  set address(value) => _address = value;

  get contact => _contact;
  set contact(value) => _contact = value;

  User(
      {int id,
      String name = '',
      String email = '',
      String password = '',
      String nationality = '',
      String address = '',
      String contact = ''})
      : _id = id,
        _name = name,
        _email = email,
        _password = password,
        _nationality = nationality,
        _address = address,
        _contact = contact;

  User.copy(User from)
      : this(
            id: from.id,
            name: from.name,
            email: from.email,
            password: from.password,
            nationality: from.nationality,
            address: from.address,
            contact: from.contact);
  User.fromJson(Map<String, dynamic> json)
      : this(
            id: json['id'],
            name: json['name'],
            email: json['email'],
            password: json['password'],
            nationality: json['nationality'],
            address: json['address'],
            contact: json['contact']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'password': password,
        'nationality': nationality,
        'address': address,
        'contact': contact
      };
}
