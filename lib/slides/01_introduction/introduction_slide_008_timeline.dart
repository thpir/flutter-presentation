import 'package:flutter/material.dart';

class Timeline extends StatelessWidget {
  const Timeline({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "assets/images/timeline.webp",
        width: double.infinity,
        fit: BoxFit.contain,
      ),
    );
  }
}