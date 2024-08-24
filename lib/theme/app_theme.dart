import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor:Colors.white,
      textTheme: const TextTheme(
        
        
        headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
        headlineMedium : TextStyle(fontSize: 16.0, color: Colors.grey),
      ),
    );
  }
}
