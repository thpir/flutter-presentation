import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:flutter_intro/templates/widgets/bullet_text.dart';

class Slide010 extends StatelessWidget {
  const Slide010({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BulletText(
                    text: "UI is built from Widgets = Widget Tree",
                    style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    ),),
                  BulletText(
                    text: "Widgets describe how a 'View' should look",
                    style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    ),),
                  BulletText(
                    text: "Widget = Object (class) in Dart",
                    style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    ),),
                  BulletText(
                    text: "Widget has a 'lifecycle'",
                    style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    ),),
                  BulletText(
                    text: "Custom widgets",
                    style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    ),),
                ],
              ),
            )),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(
              "assets/images/010_01.webp",
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}