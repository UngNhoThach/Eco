// ignore_for_file: no_leading_underscores_for_local_identifiers

class ProvinceModel {
  ProvinceModel({
    required this.name,
    required this.code,
    required this.codename,
    required this.divisionType,
    required this.phoneCode,
    required this.districts,
  });
  late final String name;
  late final int code;
  late final String codename;
  late final String divisionType;
  late final int phoneCode;
  late final List<DistrictsModel> districts;

  ProvinceModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    code = json['code'];
    codename = json['codename'];
    divisionType = json['division_type'];
    phoneCode = json['phone_code'];
    districts = List.from(json['districts'])
        .map((e) => DistrictsModel.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['code'] = code;
    _data['codename'] = codename;
    _data['division_type'] = divisionType;
    _data['phone_code'] = phoneCode;
    _data['districts'] = districts.map((e) => e.toJson()).toList();
    return _data;
  }
}

class DistrictsModel {
  DistrictsModel({
    required this.name,
    required this.code,
    required this.codename,
    required this.divisionType,
    required this.shortCodename,
    required this.wards,
  });
  late final String name;
  late final int code;
  late final String codename;
  late final String divisionType;
  late final String? shortCodename;
  late final List<WardsModel> wards;

  DistrictsModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    code = json['code'];
    codename = json['codename'];
    divisionType = json['division_type'];
    shortCodename = json['short_codename'] ?? '';
    wards =
        List.from(json['wards']).map((e) => WardsModel.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['code'] = code;
    _data['codename'] = codename;
    _data['division_type'] = divisionType;
    _data['short_codename'] = shortCodename;
    _data['wards'] = wards.map((e) => e.toJson()).toList();
    return _data;
  }
}

class WardsModel {
  WardsModel({
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

  WardsModel.fromJson(Map<String, dynamic> json) {
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
