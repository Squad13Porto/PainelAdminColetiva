import 'package:flutter/material.dart';

class AppTheme {
  final appThemeLight = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(color: Colors.black),
      prefixIconColor: Colors.black,
      suffixIconColor: Colors.black,
      iconColor: Colors.black,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
    ),
    checkboxTheme: const CheckboxThemeData(
      checkColor: MaterialStatePropertyAll(Colors.white),
      fillColor: MaterialStatePropertyAll(Colors.black),
    ),
    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStatePropertyAll(Colors.black),
      ),
    ),
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: Colors.white),
  );

  final appThemeDark = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: const Color(0xff231F20),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    ),
    brightness: Brightness.dark,
    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(color: Colors.white),
      prefixIconColor: Colors.white,
      suffixIconColor: Colors.white,
      iconColor: Colors.white,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
    ),
    checkboxTheme: const CheckboxThemeData(
      checkColor: MaterialStatePropertyAll(Colors.black),
      fillColor: MaterialStatePropertyAll(Colors.white),
    ),
    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStatePropertyAll(Colors.white),
      ),
    ),
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: Colors.white),
  );
}
