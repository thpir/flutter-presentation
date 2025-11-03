import 'package:flutter/material.dart';

class JasprFramework extends StatelessWidget {
  const JasprFramework({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120.0),
      child: SizedBox.expand(
          child: Image.asset(
        'assets/images/jaspr_framework.jpg',
        fit: BoxFit.contain,
      )),
    );
  }
}