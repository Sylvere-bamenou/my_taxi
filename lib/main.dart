import 'package:btaxi/screens/login_screen.dart';
import 'package:btaxi/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my_taxi',
      theme: ThemeData(
        fontFamily: "brand-bold",
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: login_screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}