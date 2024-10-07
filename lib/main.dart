import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toggleswitch/consts.dart';
import 'package:toggleswitch/myImages.dart';

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
      theme: Theme(),
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
              width: 140,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: _isDarkMode ? myBlack : myGrey,
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
                        width: 50,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _isDarkMode ? Colors.white : Colors.black
                        ),
                        child: Center(
                          child: TweenAnimationBuilder(
                            tween: Tween(begin: 0.0, end: 1.0),
                            duration: Duration(seconds: 9),
                            builder: (context, value, child) {
                              return Center(
                                child: Image.asset(
                                    _isDarkMode ? IconImages.blackWhite : IconImages.whiteBlack
                                ),
                                // child: value < 1 ? lockIcon : openLock,
                              );
                            },
                            // builder: ,
                            // child: Image.asset(
                            //   _isDarkMode ? "images/blackWhite.png" : "images/whiteBlack.png"
                            // ),
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

  ThemeData Theme() {
    return ThemeData(
      brightness: _isDarkMode ? Brightness.dark : Brightness.light
    );
  }
}
