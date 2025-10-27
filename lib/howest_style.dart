import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class HowestStyle {
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color primaryColor = Color(0xFF6CC5F1);
  static const Color primaryTextColor = Color(0xFF000000);
  static const Color onPrimaryColor = Color(0xFFFFFFFF);

  static FlutterDeckTextTheme get howestTextTheme => FlutterDeckTextTheme(
        display: const TextStyle(
          fontFamily: 'nunito',
          fontWeight: FontWeight.bold,
          fontSize: 110,
        ),
        header: const TextStyle(
          fontFamily: 'nunito',
          fontSize: 70,
          fontWeight: FontWeight.w700,
        ),
        title: const TextStyle(
          fontFamily: 'nunito',
          fontWeight: FontWeight.w800,
          fontSize: 80,
        ),
        subtitle: const TextStyle(
          fontFamily: 'nunito',
          fontWeight: FontWeight.w600,
          fontSize: 50,
        ),
        bodyLarge: const TextStyle(
          fontFamily: 'nunito',
          fontWeight: FontWeight.w500,
          fontSize: 60
        ),
        bodyMedium: const TextStyle(
          fontFamily: 'nunito',
          fontWeight: FontWeight.w500,
          fontSize: 45
        ),
        bodySmall: const TextStyle(
          fontFamily: 'nunito',
          fontWeight: FontWeight.w400,
          fontSize: 30
        ),
      );
}
