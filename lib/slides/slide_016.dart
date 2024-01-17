import 'package:flutter/material.dart';

class Slide016 extends StatelessWidget {
  const Slide016({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: width * 0.1),
          child: Text(
            'Vragen?',
            style: TextStyle(
              color: Colors.white,
              fontSize: width * 0.044,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
