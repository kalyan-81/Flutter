import 'package:flutter/material.dart';

import 'Screens/login_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login_Block',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
