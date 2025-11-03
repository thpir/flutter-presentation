import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';

class WhatIsGenAI2 extends StatelessWidget {
  const WhatIsGenAI2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            'assets/images/gen_fill_ai_illustration.webp',
            fit: BoxFit.contain,
            height: 800,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 100, bottom: 100),
            child: Text(
                    'What is Generative Fill AI?',
                    style: HowestStyle.howestTextTheme.subtitle.copyWith(
                      color: HowestStyle.onPrimaryColor,
                    ),
                  ),
          ),
        )
      ],
    );
  }
}