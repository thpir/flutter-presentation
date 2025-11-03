import 'package:flutter/material.dart';

class YetChallenges extends StatelessWidget {
  const YetChallenges({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Image.asset(
        "assets/images/yet_challenges.webp",
        fit: BoxFit.contain,
      ),
    );
  }
}