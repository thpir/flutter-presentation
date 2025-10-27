import 'package:flutter/material.dart';

class DartCompiler extends StatelessWidget {
  const DartCompiler({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Image.asset(
          "assets/images/dart_compiler.png",
          height: double.infinity,
          fit: BoxFit.contain,
        )
      ),
    );
  }
}
