import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';

import 'screen3.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  GlobalKey _formKey = GlobalKey();

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    transform: Matrix4.translationValues(-80, -70, 0),
                    child: Image(
                      image: AssetImage('images/Path\ 20838.png'),
                    ),
                  ),
                  Container(
                    transform: Matrix4.translationValues(40, -5, 0),
                    height: 200,
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image(
                          image: AssetImage('images/asian-paints-logo.jpg'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Image(
                          image: AssetImage('images/language.jpg'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    transform: Matrix4.translationValues(90, 150, 0),
                    child: Image(
                      image: AssetImage('images/Paint Shop Image Group.png'),
                      width: 227,
                    ),
                  ),
                  Container(
                    transform: Matrix4.translationValues(320, 110, 0),
                    child: Image(
                      image: AssetImage('images/Polygon 1.png'),
                    ),
                  ),
                  Container(
                    transform: Matrix4.translationValues(375, 430, 0),
                    child: Image(
                      height: 75,
                      image: AssetImage('images/Ellipse 10@2x.png'),
                    ),
                  ),
                  Container(
                    transform: Matrix4.translationValues(-38, 375, 0),
                    child: Image(
                      height: 75,
                      image: AssetImage('images/Ellipse 10@2x.png'),
                    ),
                  ),
                ],
              ),
              Container(
                width: 250,
                transform: Matrix4.translationValues(0, 50, 0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Text(
                        'User Login',
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Color.fromARGB(255, 72, 41, 129),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'User Name',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 72, 41, 129),
                                      fontSize: 20),
                                ),
                                TextSpan(
                                  text: ' *',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty || value == null) {
                                return 'please enter some value';
                              }
                              return null;
                            },
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: userNameController,
                            decoration: InputDecoration(
                              hintText: 'User Name',
                              filled: true,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Password',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 72, 41, 129),
                                      fontSize: 20),
                                ),
                                TextSpan(
                                  text: ' *',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value!.isEmpty || value == null) {
                                return 'please enter some value';
                              }
                              return null;
                            },
                            controller: passwordController,
                            decoration: InputDecoration(
                              hintText: '**************',
                              filled: true,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Forgot Password ?',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 72, 41, 129)),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 20,
                    shadowColor: Color.fromARGB(255, 186, 90, 246),
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    backgroundColor: Color.fromARGB(255, 72, 41, 129),
                  ),
                  onPressed: () {
                    setState(
                      () {
                        for (int i = 0; i < jsonList.length; i++) {
                          if (jsonList[i]['username'] ==
                                  userNameController.text &&
                              jsonList[i]['password'] ==
                                  passwordController.text) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Screen3();
                                },
                              ),
                            );
                          }
                        }
                      },
                    );
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

List jsonList = [
  {
    "username": "mounika.p@codetru.com",
    "password": "Dev@123",
    "full_name": "Mounika",
    "access_token": "agbjgjtjj1999"
  },
  {
    "username": "saiteja@codetru.com",
    "password": "Admin@123",
    "full_name": "Sai Teja Puppala",
    "access_token": "agbjgjtjj1997"
  },
  {
    "username": "hemanth@codetru.com",
    "password": "Admins@123",
    "full_name": "Hemanth Macha",
    "access_token": "agbjgjtjj1998"
  },
  {
    "username": "rohith@codetru.com",
    "password": "Rohith@123",
    "full_name": "Rohith Rajabhanu",
    "access_token": "agbjgjtjj199"
  },
  {
    "username": "vinay@codetru.com",
    "password": "123@Vinay",
    "full_name": "vinay Perala",
    "access_token": "agbjgjtjj1996"
  }
];
