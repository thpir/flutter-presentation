import 'package:flutter/material.dart';

class FlutterByTheNumbers extends StatelessWidget {
  const FlutterByTheNumbers({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Center(
          child: Image.asset(
        "assets/images/flutter_by_the_numbers.webp",
        height: double.infinity,
        fit: BoxFit.contain,
      )),
    );
  }
}
