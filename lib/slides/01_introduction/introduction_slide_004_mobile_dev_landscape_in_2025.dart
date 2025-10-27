import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:flutter_intro/templates/widgets/bullet_text.dart';

class MobileDevLandscapeIn2025 extends StatelessWidget {
  const MobileDevLandscapeIn2025({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 40,
        children: [
          BulletText(
            text: "Modern Declarative UI.",
            style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
              color: HowestStyle.primaryTextColor,
            )),
          BulletText(
            text: "Cross-platform development is the rule rather than the exception.",
            style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
              color: HowestStyle.primaryTextColor,
            )),
          BulletText(
            text: "Increased focus on performance and smooth user experiences.",
            style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
              color: HowestStyle.primaryTextColor,
            )),
          BulletText(
            text: "AI and Machine Learning integration.",
            style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
              color: HowestStyle.primaryTextColor,
            )),
          BulletText(
            text: "Beyond mobile.",
            style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
              color: HowestStyle.primaryTextColor,
            )),
        ],
      ),
    );
  }
}
