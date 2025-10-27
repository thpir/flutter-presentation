import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:flutter_intro/templates/widgets/bullet_text.dart';

class MeetDart extends StatelessWidget {
  const MeetDart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BulletText(
                    text: "Developed by Google",
                    style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    ),
                  ),
                  BulletText(
                    text: "Type-safe",
                    style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    ),
                  ),
                  BulletText(
                    text: "Object-oriented",
                    style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    ),
                  ),
                  BulletText(
                    text: "Built-in null-safety",
                    style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    ),
                  ),
                  BulletText(
                    text: "Mainly (but not necessarily) used for Flutter",
                    style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    ),
                  ),
                  BulletText(
                    text: "Easy to learn",
                    style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    ),
                  ),
                ],
              ),
            )),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(right: 100),
            child: Image.asset(
              "assets/images/005_01.webp",
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
