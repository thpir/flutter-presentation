import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:flutter_intro/utils/url_handler.dart';

class CoreConceptsPackages extends StatelessWidget {
  const CoreConceptsPackages({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(left: 80),
            child: Text(
              "Flutter supports the use of \"Shared Packages\" contributed by other developers to the Flutter and Dart ecosystems. This allows you to quickly develop an app without having to start from scratch.",
              style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: InkWell(
            onTap: () {
              UrlHandler.visitUrl("https://pub.dev/packages/camera");
            },
            child: Image.asset(
              "assets/images/camera_package.webp",
              width: 500,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
