import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toggleswitch/homePage.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  // Function to toggle dark mode
  void toggleDarkMode() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData(),
      home: homePage(isDarkMode: _isDarkMode, toggleDarkMode: toggleDarkMode,),
    );
  }

  ThemeData themeData() {
    return ThemeData(
        brightness: _isDarkMode ? Brightness.dark : Brightness.light
    );
  }
}

