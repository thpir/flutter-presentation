import 'package:flutter/material.dart';

class YetAiIntro extends StatelessWidget {
  const YetAiIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/yet_ai_sprinkle.webp',
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
  }
}