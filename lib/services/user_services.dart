import 'rest.dart';
import '../models/users.dart';

class UserService {
  static Future<List<User>> getUser(int userId) async {
    final List listJson = await Rest.get('users?user=$userId');
    return listJson.map((json) => User.fromJson(json)).toList();
  }

  static Future<User> addUser(User uzr) async {
    final json = await Rest.post('add_user', data: uzr);
    return User.fromJson(json);
  }

  static Future<User> updateUseer(User uzr) async {
    final updatedUser = await Rest.put("users/${uzr.id}", data: uzr);
    return User.fromJson(updatedUser);
  }

  static Future<void> removeUser(User uzr) async {
    await Rest.delete("users/${uzr.id}");
  }
}
