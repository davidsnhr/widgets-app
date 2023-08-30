


import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.red,
  Colors.deepPurple,
  Colors.teal,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent
];

class AppTheme {
  final int selectedColor;
  
  AppTheme({
    this.selectedColor = 0
  }) : assert (
    selectedColor >= 0, 'The color must be grater than 0'
  ),
   assert (
    selectedColor < colorList.length, 'The color must be less than ${colorList.length - 1}'
  )
  ;


  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor]
  );
}