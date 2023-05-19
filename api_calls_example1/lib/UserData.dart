import 'package:api_calls_example1/Display_Details.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserData extends StatefulWidget {
  const UserData({super.key});

  @override
  State<UserData> createState() => _UserDataState();
}

class _UserDataState extends State<UserData> {
  getUserData() async {
    String URL = 'https://reqres.in/api/users/2';
    http.Response response = await http.get(Uri.parse(URL));

    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'this is the API call example',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              getUserData();

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Display_Details(),
                ),
              );
            },
            child: Text('Click here to Get User Data'),
          )
        ],
      ),
    );
  }
}
