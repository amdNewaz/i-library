//import '../../dependencies.dart';
import '../rest.dart';
import '../../models/settings.dart';

class SettingServiceRest {
  /* final rest = dependency<Rest>();
  
  Future<List<Settings>> getSettingList() async {
    final listJson = await rest.get('settings');

    return (listJson as List)
        .map((itemJson) => Settings.fromJson(itemJson))
        .toList();
  }

  Future<Settings> updateSettingStatus({int id}) async {
    final json = await rest.patch('settings/$id');
    return Settings.fromJson(json);
  }*/

  static Future fetchSettings() async {
    var _set = List<Settings>();
    var data = await Rest.get('Setting');
    for (var set in data) {
      _set.add(Settings.fromJson(set));
    }
    return _set;
  }
}
