import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          emailField(),
          passwordField(),
          Container(
            margin: EdgeInsets.only(top: 25),
          ),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'you@example.com',
        labelText: 'Enter Email Address',
      ),
    );
  }

  Widget passwordField() {
    return TextField(
      decoration: InputDecoration(hintText: 'password', labelText: 'password'),
    );
  }

  Widget submitButton() {
    return ElevatedButton(onPressed: () {}, child: Text('Submit'));
  }
}
