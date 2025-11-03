import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';

class WhatIsGenAi extends StatelessWidget {
  const WhatIsGenAi({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 200, right: 200, bottom: 100),
            child: Text(
                    '“Generative Fill AI uses text prompts to add or remove content non-destructively in images, allowing users to manipulate and enhance photos with AI-generated elements”',
                    style: HowestStyle.howestTextTheme.subtitle.copyWith(
                      color: HowestStyle.onPrimaryColor,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
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