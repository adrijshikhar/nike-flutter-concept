import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract class AppStyle {
  static const headingText = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1),
    fontFamily: 'Monsterrat',
    fontSize: 36,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const subHeadingText = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1),
    fontFamily: 'Monsterrat',
    fontSize: 30,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
  );

  static TextStyle brandHeading(isSelected) {
    return TextStyle(
        color: isSelected ? Colors.black : Colors.grey,
        fontSize: isSelected ? 22 : 16,
        fontFamily: 'Monsterrat',
        fontWeight: FontWeight.w700);
  }
}
