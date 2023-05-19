// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:todo_list/get_users_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  registerUser() async {
    String post_api = 'https://reqres.in/api/users';
    Map map = {'first_name': 'kalyan', 'last_name': 'cherukupally'};
    http.Response response = await http.post(Uri.parse(post_api), body: map);

    if (response.body != null) {
      print('resonse' + response.body);
    } else {
      print('something wrong');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('API call example 2'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: registerUser,
                child: Text('Register user'),
              ),
              ElevatedButton(
                onPressed: () async {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => GetUserData()));
                },
                child: Text('Get Users Data'),
              ),
            ],
          ),
        ));
  }
}
