import 'dart:convert';
import 'package:flutter/rendering.dart';
import 'package:api_calls_example3/DartObject.dart';
import 'package:api_calls_example3/userDataPage.dart';
import 'package:api_calls_example3/userProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController? _controller;

  String url = 'https://reqres.in/api/users?page=2';

  DartObject? obj;
  @override
  void initState() {
    // TODO: implement initState
    fetchData();
    super.initState();

    _controller = TabController(length: 2, vsync: this);
  }

  Future fetchData() async {
    var data = await http.get(Uri.parse(url));
    var decodedJson = jsonDecode(data.body);
    // print(decodedJson);
    obj = DartObject.fromJson(decodedJson);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Data'),
        centerTitle: true,
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(
              child: Text('user data'),
              icon: Icon(Icons.verified_user_sharp),
            ),
            Tab(
              child: Text('Profile'),
              icon: Icon(Icons.photo_rounded),
            )
          ],
        ),
      ),
      body: (obj == null)
          ? Center(child: CircularProgressIndicator())
          : TabBarView(
              controller: _controller,
              children: <Widget>[
                UserDataPage(obj1: obj),
                UserProfilePage(obj1: obj),
              ],
            ),
    );
  }
}
