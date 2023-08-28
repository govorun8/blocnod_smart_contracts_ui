import 'package:blocnod_smart_contracts_ui/constants.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      canvasColor: const Color(0xFFF3F7FF),
      primaryColor: const Color(0xFF3C75E0),
      splashColor: const Color(0xFF6492E8),
      highlightColor: Colors.transparent,
      hintColor: const Color(0xFF4CAA7E),
      indicatorColor: const Color(0xFFB74646),
      dividerColor: const Color(0xFFC1C6CC),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          color: Color(0xFF191A29),
          fontFamily: kFontFamily,
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
        bodyMedium: TextStyle(
          color: Color(0xFF191A29),
          fontFamily: kFontFamily,
          fontWeight: FontWeight.w400,
          fontSize: 18,
        ),
        labelLarge: TextStyle(
          color: Color(0xFFA6A7AA),
          fontFamily: kFontFamily,
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
        labelMedium: TextStyle(
          color: Color(0xFFA6A7AA),
          fontFamily: kFontFamily,
          fontWeight: FontWeight.w400,
          fontSize: 18,
        ),
      ),
    );
  }
}
