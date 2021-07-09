import 'package:i_library/screens/admin_screens/rent_settings/rent_period';

class Setting {
  List<BorrowLimit> borrowLimit;
  List<RentPeriod> rentPeriod;

  Setting({this.borrowLimit, this.rentPeriod});

  Setting.fromJson(Map<String, dynamic> json)
      : this(
            borrowLimit: (json['borrowLimit'] as List)
                .map((item) => BorrowLimit.fromJson(item))
                .toList(),
            rentPeriod: (json['rentPeriod'] as List)
                .map((item) => RentPeriod.fromJson(item))
                .toList());
}

class BorrowLimit {
  int value;

  BorrowLimit({this.value});
  BorrowLimit.fromJson(Map<String, dynamic> json) : this(value: json['value']);

  Map<String, dynamic> toJson() => {'value': value};
}

class RentPeriod {
  int days;

  RentPeriod({this.days});
  RentPeriod.fromJson(Map<String, dynamic> json) : this(days: json['days']);

  Map<String, dynamic> toJson() => {'days': days};
}
