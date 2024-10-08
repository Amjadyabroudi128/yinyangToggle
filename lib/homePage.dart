import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toggleswitch/consts.dart';
import 'package:toggleswitch/myImages.dart';

class homePage extends StatefulWidget {
  final bool isDarkMode;
  final Function toggleDarkMode;

  const homePage({super.key, required this.isDarkMode, required this.toggleDarkMode});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: GestureDetector(
          onTap: () {
            widget.toggleDarkMode();
          },
          child: AnimatedContainer(
            duration: MS300,
            width: 140,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: widget.isDarkMode ? myBlack : myGrey,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                AnimatedAlign(
                  duration: Duration(milliseconds: 300),
                  alignment:
                  widget.isDarkMode ? Alignment.centerRight : Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3, bottom: 3),
                    child: Container(
                      width: 50,
                      height: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: widget.isDarkMode ? Colors.white : Colors.black),
                      child: Center(
                        child: TweenAnimationBuilder(
                          tween: contAnimation,
                          duration: Duration(seconds: 9),
                          builder: (context, value, child) {
                            return Center(
                              child: Image.asset(widget.isDarkMode
                                  ? IconImages.blackWhite
                                  : IconImages.whiteBlack),
                            );
                          },
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
    );
  }
}
