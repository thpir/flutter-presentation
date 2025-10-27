import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:flutter_intro/templates/widgets/bullet_text.dart';

class WhenFlutter extends StatelessWidget {
  const WhenFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 120),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BulletText(
            text:
                "Flutter is performant, fast, well documented and popular",
            style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
              color: HowestStyle.primaryTextColor,
            ),
          ),
          BulletText(
            text:
                "Flutter is a must when application needs to run on multiple platforms",
            style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
              color: HowestStyle.primaryTextColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Text(
              'BUT...',
              style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                color: HowestStyle.primaryTextColor,
              ),
            ),
          ),
          BulletText(
            text: "Many natively developed apps in production",
            style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
              color: HowestStyle.primaryTextColor,
            ),
          ),
          BulletText(
            text:
                "Good native developers will become a rare breed in the future",
            style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
              color: HowestStyle.primaryTextColor,
            ),
          ),
          BulletText(
            text:
                "Useful for writing packages yourself and doing bug fixing on packages",
            style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
              color: HowestStyle.primaryTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
