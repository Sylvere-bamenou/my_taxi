import 'package:btaxi/screens/login_screen.dart';
import 'package:btaxi/screens/main_screen.dart';
import 'package:btaxi/screens/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my_taxi',
      theme: ThemeData(
        fontFamily: "brand-bold",
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: login_screen.idScreen,
      routes: {
        signup_screen.idScreen:(context) => signup_screen(),
        login_screen.idScreen:(context) => login_screen(),
        Main_screen.idScreen:(context) => Main_screen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}