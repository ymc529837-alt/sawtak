
import 'package:flutter/material.dart';

const Color kPrimary = Color(0xFF1976D2);
const Color kText = Color(0xFF172033);
const Color kTextMuted = Color(0xFF78869A);
const Color kDanger = Color(0xFFE53935);
const Color kBg = Color(0xFFF6F9FF);

const LinearGradient kBrandGradient = LinearGradient(
  colors: [
    Color(0xFF1976D2),
    Color(0xFF42A5F5),
  ],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);

ThemeData sawtakTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: kBg,
    colorScheme: ColorScheme.fromSeed(
      seedColor: kPrimary,
      primary: kPrimary,
      surface: Colors.white,
      error: kDanger,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: kText,
      centerTitle: true,
      elevation: 0,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide.none,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 14,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimary,
        foregroundColor: Colors.white,
        minimumSize: const Size.fromHeight(50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
    ),
  );
}
