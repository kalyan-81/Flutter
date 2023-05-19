import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'DropDownButton demo'),
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
  var countries = ['Select Country', 'India', 'Japan', 'Pakistan'];
  var selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton(
                value: selectedItem,
                items: countries.map(
                  (item) {
                    return DropdownMenuItem(child: Text(item), value: item);
                  },
                ).toList(),
                onChanged: (item) {
                  setState(() {
                    selectedItem = item;
                  });
                }),
            Text(
              'you are selected county:$selectedItem',
            ),
          ],
        ),
      ),
    );
  }
}
