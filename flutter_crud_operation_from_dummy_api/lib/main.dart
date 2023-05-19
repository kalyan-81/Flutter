import 'package:flutter/material.dart';
import 'package:flutter_crud_operation_from_dummy_api/ViewTheCustomers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'Customers',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Add New Customer'),
            ),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ViewCustomers();
                    },
                  ));
                });
              },
              icon: Icon(Icons.visibility_outlined),
              label: Text('View The Customers'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.update),
              label: Text('Update the Customer'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
              ),
              label: Text('Delete the Customer'),
            ),
          ],
        ),
      ),
    );
  }
}
