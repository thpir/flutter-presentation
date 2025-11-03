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
            'assets/images/cross_platform.webp',
            fit: BoxFit.contain,),
          Image.asset(
            'assets/images/flutter_add_to_app.webp',
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}