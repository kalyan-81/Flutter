import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "My app",
    color: Colors.red,
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.blue),

    // ignore: sort_child_properties_last
    home: Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("First Page"),
        centerTitle: true,
      ),
      body: HomePage(),
    ),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          isExpanded ? const EdgeInsets.only(bottom: 0) : EdgeInsets.all(0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            Text('1'),
            TextField(
              decoration: InputDecoration(labelText: 'Username'),
              onTap: () {
                setState(() {
                  //isExpanded = true;
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 40,
                        width: double.infinity,
                        color: Colors.red,
                      );
                    },
                  );
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
