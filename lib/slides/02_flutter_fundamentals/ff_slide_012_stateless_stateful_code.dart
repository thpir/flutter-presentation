import 'package:flutter/material.dart';

class StatelessStatefulCode extends StatelessWidget {
  const StatelessStatefulCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120.0),
      child: SizedBox.expand(
          child: Image.asset(
        'assets/images/stateless_vs_stateful_code.webp',
        fit: BoxFit.contain,
      )),
    );
  }
}