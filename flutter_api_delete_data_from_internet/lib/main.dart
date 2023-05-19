import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_api_delete_data_from_internet/Album.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //function for http request
  Future<Album> deleteData(String id) async {
    final response = await http
        .delete(Uri.parse('https://jsonplaceholder.typicode.com/albums/$id'));

    if (response.statusCode == 200) {
      print(response.body);
      return Album.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('failed to delete the data');
    }
  }

  Future<Album> fetchData() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
    if (response.statusCode == 200) {
      print(response.body);
      return Album.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Invalid data');
    }
  }

  Future<Album>? _futureAlbum;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //calling http request function once when app runs
    _futureAlbum = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Delete data example'),
        ),
        body: Center(
          child: FutureBuilder(
            future: _futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      Text(snapshot.data?.title?? 'deleted'),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _futureAlbum =
                                deleteData(snapshot.data!.id.toString());
                          });
                        },
                        child: Text('Delete'),
                      )
                    ],
                  );
                }
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return CircularProgressIndicator();
            },
          ),
        ));
  }
}
