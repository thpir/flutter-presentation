import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';

class FahTitle extends StatelessWidget {
  const FahTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Text(
          "Flutter at Howest",
          style: HowestStyle.howestTextTheme.display.copyWith(color: HowestStyle.onPrimaryColor)
        ),
      ),
    );
  }
}