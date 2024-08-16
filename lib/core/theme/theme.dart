import 'package:flutter/material.dart';
import 'package:ikimashini/core/theme/app_pallet.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: AppPalette.primaryColor,
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: AppPalette.accentColor,
      brightness: Brightness.dark
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppPalette.textColor),
      bodyMedium: TextStyle(color: AppPalette.textColor),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black54
    )
  );
}
