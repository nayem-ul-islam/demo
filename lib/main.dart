//import 'package:demo/PostScreen.dart';
//import 'package:demo/RegisterUser.dart';
import 'package:demo/RegisterUser1.dart';
import 'package:flutter/material.dart';
//import 'RegisterUser1.dart';
//import 'RegisterUser.dart';
//import 'PostScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('User Registration Form'),
        ),
        body: Center(
          child: RegisterUser1(),
        ),
      ),
    );
  }
}
