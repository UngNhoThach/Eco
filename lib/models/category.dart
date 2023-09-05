// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, unnecessary_this

class UserInformation {
  int? id;
  String? username;
  String? address;

  UserInformation(
      {required this.id, required this.username, required this.address});

  factory UserInformation.fromJson(json) {
    return UserInformation(
        id: json['id'], username: json['username'], address: json['address']);
  }

  toJson() {
    return {"id": this.id, "username": this.username, "address": this.address};
  }
}
