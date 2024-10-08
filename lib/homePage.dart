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
            width: MediaQuery.of(context).size.width * 0.36,
            height: MediaQuery.of(context).size.height * 0.055,
            decoration: containerCircle(
              widget.isDarkMode ? myBlack : myGrey
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                AnimatedAlign(
                  duration: MS300,
                  alignment: align(
                    widget.isDarkMode ? Alignment.centerRight : Alignment.centerLeft
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3, bottom: 3),
                    child: Container(
                      width: 50,
                      height: 40,
                      decoration: animatedDecoration(
                        widget.isDarkMode ? whiteish : myBlack
                      ),
                      child: Center(
                        child: TweenAnimationBuilder(
                          tween: contAnimation,
                          duration: secs9,
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
