import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class AppTheme {
  const AppTheme._();

  static final primarySwatch = MaterialColor(
    0xFF12e0b8,
    {
      50: TigrisColor.greenOpacity10,
      100: TigrisColor.greenOpacity20,
      200: TigrisColor.greenOpacity30,
      300: TigrisColor.greenOpacity40,
      400: TigrisColor.greenOpacity50,
      500: TigrisColor.greenOpacity60,
      600: TigrisColor.greenOpacity70,
      700: TigrisColor.greenOpacity80,
      800: TigrisColor.greenOpacity90,
      900: TigrisColor.greenOpacity100,
    },
  );

  static final light = ThemeData(
    primarySwatch: primarySwatch,
    splashColor: Colors.white,
    highlightColor: Colors.white,
    primaryColor: TigrisColor.appGreen,
    dialogBackgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Mont',
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontSize: 25.0,
        color: TigrisColor.blackOpacity100,
      ),
      headlineMedium: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
        color: TigrisColor.blackOpacity100,
      ),
      headlineSmall: TextStyle(
        fontSize: 18.0,
        color: TigrisColor.greenOpacity100,
      ),
      labelLarge: TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 16.0,
        color: TigrisColor.blackOpacity40,
      ),
      labelMedium: TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 32.0,
        color: TigrisColor.blackOpacity100,
      ),
      labelSmall: TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 18.0,
        color: TigrisColor.blackOpacity100,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 18.0,
        color: TigrisColor.blackOpacity100,
        decoration: TextDecoration.underline,
      ),
      bodyMedium: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
        color: TigrisColor.greenOpacity100,
      ),
      bodySmall: TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 18.0,
        color: TigrisColor.blackOpacity100,
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 18.0,
        color: TigrisColor.greenOpacity100,
      ),
      titleMedium: const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w800,
      ),
    ),
  );
}
