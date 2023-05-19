class UserModel {
  late int id;
  late String first_name;
  late String last_name;

  UserModel(
      {required this.id, required this.first_name, required this.last_name});

  factory UserModel.fromJson(Map map) {
    return UserModel(
        id: map['id'],
        first_name: map['first_name'],
        last_name: map['last_name']);
  }
}
