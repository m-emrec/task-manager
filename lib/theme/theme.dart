import 'package:flutter/material.dart';

class AppTheme {
  final theme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    textTheme: AppTexts().appTextTheme,

    //// input decoration
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(16),
      ),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      labelStyle: AppTexts().appTextTheme.labelMedium,
      fillColor: Colors.white,
      filled: true,
    ),

    //// button themes
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll<Color>(AppColors.buttonColor),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          foregroundColor: const MaterialStatePropertyAll(Colors.white)),
    ),

    //// SnackBar Theme
    snackBarTheme: const SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
    ),
  );
}

class AppColors {
  //// Main Colors
  /// Click me color.
  static Color secondaryColor = const Color(0xFF7F56D9);
  static Color primaryColor = const Color(0xFFF9F9FB);
  static Color greenColor = const Color(0xFF039855);

  static Color redColor = const Color(0xFFF02D3A);

  //// Widget Colors
  static Color buttonColor = const Color(0xFF111322);

  ///x
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
    titleMedium: const TextStyle(
      fontSize: 16,
      color: Color(0xFF111321),
      fontWeight: FontWeight.w600,
    ),
    labelMedium: const TextStyle(
      fontSize: 18,
      color: Color(0xFF7D89B0),
      fontWeight: FontWeight.bold,
    ),
    labelSmall: const TextStyle(
      fontSize: 14,
      color: Color(0xFF7D89B0),
    ),
  );
}
