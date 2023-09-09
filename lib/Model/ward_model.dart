// ignore_for_file: no_leading_underscores_for_local_identifiers

class WardModel {
  WardModel({
    required this.name,
    required this.code,
    required this.codename,
    required this.divisionType,
    required this.shortCodename,
  });
  late final String name;
  late final int code;
  late final String codename;
  late final String divisionType;
  late final String shortCodename;

  WardModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    code = json['code'];
    codename = json['codename'];
    divisionType = json['division_type'];
    shortCodename = json['short_codename'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['code'] = code;
    _data['codename'] = codename;
    _data['division_type'] = divisionType;
    _data['short_codename'] = shortCodename;
    return _data;
  }
}
