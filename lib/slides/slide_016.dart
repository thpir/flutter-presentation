import 'package:flutter/material.dart';

class Slide016 extends StatelessWidget {
  const Slide016({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 200),
          child: Text(
            'Vragen?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 80,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
