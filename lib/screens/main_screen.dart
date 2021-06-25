import 'package:flutter/material.dart';

class Main_screen extends StatefulWidget {
  static const String idScreen = "mainscreen";
  @override
  _Main_screenState createState() => _Main_screenState();
}

class _Main_screenState extends State<Main_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
    );
  }
}
