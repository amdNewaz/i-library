class Settings {
  int settingID;
  int borrowLimit;
  int rentPeriod;

  Settings({this.settingID, this.borrowLimit, this.rentPeriod});

  Settings.fromJson(Map<String, dynamic> json) {
    settingID = json['settingID'];
    borrowLimit = json['borrowLimit'];
    rentPeriod = json['rentPeriod'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['settingID'] = this.settingID;
    data['borrowLimit'] = this.borrowLimit;
    data['rentPeriod'] = this.rentPeriod;
    return data;
  }
}
