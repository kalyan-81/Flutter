import 'package:flutter/material.dart';

void main() {
  runApp(const HomeSreen());
}

class HomeSreen extends StatefulWidget {
  const HomeSreen({Key? key}) : super(key: key);

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Cool App")),
        body: Center(
          child: ElevatedButton(
            child: const Text("Fetch Data"),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
