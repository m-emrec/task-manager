import 'package:flutter/material.dart';
import 'package:todo/extensions/color_extension.dart';

class AppTheme {
  final theme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    textTheme: AppTexts().appTextTheme,
  );
}

class AppColors {
  //// Main Colors
  /// Click me color.
  static Color secondaryColor = const Color(0xFF7F56D9);
  static Color primaryColor = const Color(0xFFF9F9FB);
  static Color greenColor = const Color(0xFF039855);

  //// Widget Colors
  static Color buttonColor = Color(111322.toColor);

  ///
  static const Color progressBarBackgroundColor = Color(0xFFF4EBFF);

  ///#EBEDF1
  ///
  //// Text Colors
  static Color textColor = const Color(0xFF111322);

  static Color subtitleColor = const Color(0xFF4A5578);
}

class AppTexts {
  final TextTheme appTextTheme = TextTheme(
    titleLarge: TextStyle(
      fontSize: 18,
      color: AppColors.textColor,
      fontWeight: FontWeight.w600,
    ),
    labelSmall: const TextStyle(
      fontSize: 14,
      color: Color(0xFF7D89B0),
    ),
  );
}
