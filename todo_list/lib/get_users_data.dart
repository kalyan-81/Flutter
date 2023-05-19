import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'user_model.dart';

class GetUserData extends StatefulWidget {
  const GetUserData({super.key});

  @override
  State<GetUserData> createState() => _GetUserDataState();
}

class _GetUserDataState extends State<GetUserData> {
  final String getUrl = 'https://reqres.in/api/users';

  Future<http.Response> getUsersData() async {
    http.Response response = await http.get(Uri.parse(getUrl));
    //for successful of getting data from api the success code is 200
    // for sucessful insertion of data to the api the sucess code is 201
    print("response >>" + response.statusCode.toString());
    print("response >>" + response.body.toString());
    return response;
  }

  void initState() {
    getUsersData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('user data'),
        ),
        body: FutureBuilder<http.Response>(
          future: getUsersData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data != null) {
                Map map = jsonDecode(snapshot.data!.body.toString());
                print("snapshot data: " + map['data'].toString());

                //with user model
                List<UserModel> userModelList = (map['data'] as List)
                    .map((e) => UserModel.fromJson(e))
                    .toList();

                return ListView.builder(
                  itemCount: map['data'].length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Text(userModelList[index].id.toString()),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(userModelList[index].first_name.toString()),
                          Text(userModelList[index].last_name.toString()),
                        ],
                      ),
                    );
                  },
                );

                // without user model

                // return ListView.builder(
                //   itemCount: map['data'].length,
                //   itemBuilder: (context, index) {
                //     return ListTile(
                //       leading: Text(map['data'][index]['id'].toString()),
                //       title: Text(map['data'][index]['email'].toString()),
                //     );
                //   },
                // );
              }
            }
            if (snapshot.hasError) {}
            return Center(child: CircularProgressIndicator());
          },
        ));
  }
}
