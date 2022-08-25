import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
    primaryColor: Colors.amber,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.amber,
      disabledColor: Colors.grey,
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: Colors.red,
      brightness: Brightness.dark,
    ));

ThemeData lightTheme = ThemeData(
    primaryColor: Colors.blue,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blue,
      disabledColor: Colors.grey,
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: Colors.pink,
      brightness: Brightness.light,
    ));
