import 'package:flutter/material.dart';

class Slide004 extends StatelessWidget {
  const Slide004({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Image.asset(
          "assets/images/004_01.webp",
          height: double.infinity,
          fit: BoxFit.contain,
        )
      ),
    );
  }
}
