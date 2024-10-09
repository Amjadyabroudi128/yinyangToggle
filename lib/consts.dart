import 'package:flutter/material.dart';

Color? myGrey = Colors.grey[300];
Color? myBlack = Colors.black;

// duration
Duration MS300 = Duration(milliseconds: 300);
Tween contAnimation = Tween(begin: 0.0, end: 1.0);

//Decoration
Decoration animatedDecoration(Color color) {
  return BoxDecoration(
    shape: BoxShape.circle,
    color: color, // Use the color parameter
  );
}
