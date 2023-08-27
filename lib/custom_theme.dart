import 'package:blocnod_smart_contracts_ui/constants.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
        textTheme: const TextTheme(
            bodyLarge: TextStyle(
              color: Colors.black,
              fontFamily: kFontFamily,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
            bodyMedium: TextStyle(
              color: Colors.black,
              fontFamily: kFontFamily,
              fontWeight: FontWeight.w400,
              fontSize: 18,
            )));
  }
}
