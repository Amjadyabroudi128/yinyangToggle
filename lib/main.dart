import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toggleswitch/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  void toggleButton () {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Theme(),
      home: homePage(isDarkMode: _isDarkMode, toggleDarkMode: toggleButton,),
    );
  }

  ThemeData Theme() {
    return ThemeData(
      brightness: _isDarkMode ? Brightness.dark : Brightness.light
    );
  }
}
