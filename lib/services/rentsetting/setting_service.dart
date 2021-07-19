import 'package:i_library/models/settings.dart';

abstract class SettingService {
  //Future<List<Settings>> getSettingList({int settingId});
  Future<Settings> updateSettingStatus({int id});
  Future<Settings> createSetting({Settings settings});
  Future deleteSetting({int id});
}