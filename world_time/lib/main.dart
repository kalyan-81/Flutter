import 'package:flutter/material.dart';
import 'package:world_time/pages/choose_location.dart';
import 'package:world_time/pages/loading.dart';
import 'pages/home.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: '/Home',
    routes:{
      '/':(context) => Loading(),
      '/Home':(context) => Home(),
      '/Location':(context) => ChoseLocation(),
    },

  ),);
}

