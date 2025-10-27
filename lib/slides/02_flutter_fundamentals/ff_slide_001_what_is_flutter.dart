import 'package:flutter/material.dart';

class WhatIsFlutter extends StatelessWidget {
  const WhatIsFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/cross_platform.png',
            fit: BoxFit.contain,),
          Image.asset(
            'assets/images/flutter_add_to_app.png',
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}