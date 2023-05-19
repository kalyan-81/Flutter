import 'dart:convert';

import 'package:http/http.dart' as http;

import 'model/user.dart';

void main() {
  UserRepository().getUsers();
}

class UserRepository {
  Future<User> getUsers() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      print(json.decode(response.body));
      print(jsonDecode(response.body).runtimeType);
      return User.fromJson(jsonDecode(response.body)[0]);
    } else
      throw Exception("some error occuured");
  }
}
