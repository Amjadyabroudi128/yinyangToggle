import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: _isDarkMode ? Brightness.dark : Brightness.light
      ),
      home: CupertinoPageScaffold(
        child: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isDarkMode = !_isDarkMode;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: _isDarkMode ? Colors.black : Colors.grey[300],
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AnimatedAlign(
                    duration: Duration(milliseconds: 300),
                    alignment:
                    _isDarkMode ? Alignment.centerRight : Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Icon(
                            _isDarkMode
                                ? Icons.nightlight_round
                                : Icons.wb_sunny,
                            size: 20,
                            color: _isDarkMode ? Colors.black : Colors.orange,
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
