class User {
  int? id;
  String? name;
  String? username;
  String? email;

  String? phone;
  String? website;

  User({
    this.id,
    this.name,
    this.username,
    this.email,
    this.phone,
    this.website,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    email = json['email'];

    website = json['website'];
  }
}
