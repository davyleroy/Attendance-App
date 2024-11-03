// lib/themes/light_theme.dart
import 'package:flutter/material.dart';

class LightTheme {
  static ThemeData get theme {
    return ThemeData(
      primarySwatch: Colors.lightGreen,
      brightness: Brightness.light,
      primaryColor: Colors.lightGreen,
      // accentColor: Colors.lightGreen, // Removed this line
      colorScheme: const ColorScheme.light(
          primary: Colors.lightGreen), // Added this line
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        color: Colors.lightGreen,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold), // Updated this line
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.lightGreen,
        textTheme: ButtonTextTheme.primary,
      ),
      textTheme: const TextTheme(
        bodyLarge:
            TextStyle(color: Colors.black, fontSize: 16), // Added 'const'
        bodyMedium: TextStyle(
            // Added 'const' here
            color: Colors.black54,
            fontSize: 14), // Added 'const'
        displayLarge: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold), // Added 'const'
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.lightGreen),
        ),
        labelStyle: TextStyle(color: Colors.lightGreen),
      ),
    );
  }
}
