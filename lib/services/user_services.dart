import 'rest.dart';
import '../models/users.dart';

class UserService {
  /*static Future<List<User>> getUser(int userId) async {
    final List listJson = await Rest.get('users?user=$userId');
    return listJson.map((json) => User.fromJson(json)).toList();
  }

  static Future<User> addUser(User uzr) async {
    final json = await Rest.post('users', data: uzr);
    return User.fromJson(json);
  }

  static Future<User> updateUser(User uzr) async {
    final updatedUser = await Rest.put("users/${uzr.id}", data: uzr);
    return User.fromJson(updatedUser);
  }

  static Future<void> removeUser(User uzr) async {
    await Rest.delete("users/${uzr.id}");
  }*/
  static Future fetchUser(int userId) async {
    var _uzrs = List<User>();
    var data = await Rest.get('User');
    for (var uzrs in data) {
      _uzrs.add(User.fromJson(uzrs));
    }
    return _uzrs;
  }

  static Future<User> addUser(User uzr) async {
    final json = await Rest.post('User', data: uzr);
    return User.fromJson(json);
  }

  static Future<User> getUserByEmailAndPassword(
      {String email, String password}) async {
    final listJson = await Rest.get('User?email=$email&password=$password');
    if (listJson.length == 0) return null;
    return User.fromJson(listJson[0]);
  }
}
