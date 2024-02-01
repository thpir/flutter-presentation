import 'package:flutter/material.dart';

class Slide003 extends StatelessWidget {
  const Slide003({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Image.asset(
          "assets/images/003_01.webp",
          height: double.infinity,
          fit: BoxFit.contain,
        )
      ),
    );
  }
}
