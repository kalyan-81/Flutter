import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:crud_operation_with_json/dartObject.dart';
import 'package:http/http.dart' as http;

class ReadData extends StatefulWidget {
  const ReadData({super.key});

  @override
  State<ReadData> createState() => _ReadDataState();
}

class _ReadDataState extends State<ReadData> {
  var url = 'http://com.kalyan.crud.example';

  Future<StudentDetails>? futureResponse;

  Future<StudentDetails> fetchData() async {
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return StudentDetails.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('url doesn\'t exist');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureResponse = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: FutureBuilder<StudentDetails>(
        future: futureResponse,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                Text('${snapshot.data!.firstName}'),
                Text('${snapshot.data!.lastName}'),
                Text('${snapshot.data!.emailId}'),
              ],
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
