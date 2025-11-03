import 'package:flutter/material.dart';

class StatelessStateful extends StatelessWidget {
  const StatelessStateful({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120.0),
      child: SizedBox.expand(
          child: Image.asset(
        'assets/images/stateful_vs_stateless.png',
        fit: BoxFit.contain,
      )),
    );
  }
}
