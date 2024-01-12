import 'package:flutter/material.dart';

class Slide002 extends StatelessWidget {
  const Slide002({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Image.asset(
          "assets/images/002_01.png",
          height: double.infinity,
          fit: BoxFit.contain,
        )
      ),
    );
  }
}
