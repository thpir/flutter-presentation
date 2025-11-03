import 'package:flutter/material.dart';

class FlutterIndustrial extends StatelessWidget {
  const FlutterIndustrial({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 200,
        children: [
          Image.asset(
            'assets/images/flutter_pi_project.jpeg',
            fit: BoxFit.contain,),
          Center(
            child: Image.asset(
              'assets/images/qr_flutter_industrial.png',
              height: 400,
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}
