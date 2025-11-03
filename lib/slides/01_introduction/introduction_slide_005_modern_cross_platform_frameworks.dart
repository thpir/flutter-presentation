import 'package:flutter/material.dart';

class ModernCrossPlatformFrameworks extends StatelessWidget {
  const ModernCrossPlatformFrameworks({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Image.asset(
          'assets/images/popular_frameworks.webp',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}