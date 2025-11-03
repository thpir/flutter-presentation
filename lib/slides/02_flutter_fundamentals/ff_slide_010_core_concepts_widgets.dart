import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:flutter_intro/templates/widgets/bullet_text.dart';

class CoreConceptsWidgets extends StatelessWidget {
  const CoreConceptsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 40,
        children: [
          Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 20,
                children: [
                  BulletText(
                    text:  Text("UI is built from Widgets = Widget Tree",
                    style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    ),),style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    )),
                  BulletText(
                    text:  Text("Widgets describe how a 'View' should look",
                    style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    ),),style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    )),
                  BulletText(
                    text:  Text("Widget = Object (class) in Dart",
                    style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    ),),style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    )),
                  BulletText(
                    text:  Text("Widget has a 'lifecycle'",
                    style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    ),),style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    )),
                  BulletText(
                    text:  Text("Custom widgets",
                    style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    ),),style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    )),
                ],
              )),
          Expanded(
            flex: 3,
            child: Image.asset(
              "assets/images/010_01.webp",
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}