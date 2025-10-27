import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';

class IntroductionTitle extends StatelessWidget {
  const IntroductionTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Text(
          "Introduction",
          style: HowestStyle.howestTextTheme.display.copyWith(color: HowestStyle.onPrimaryColor)
        ),
      ),
    );
  }
}