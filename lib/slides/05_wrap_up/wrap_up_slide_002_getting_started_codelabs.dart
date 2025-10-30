import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:flutter_intro/templates/widgets/bullet_text.dart';
import 'package:flutter_intro/utils/url_handler.dart';

class GettingStartedCodelabs extends StatelessWidget {
  const GettingStartedCodelabs({super.key});

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
                spacing: 40,
                children: [
                  InkWell(
                      onTap: () async {
                        await UrlHandler()
                            .visitUrl("https://docs.flutter.dev/");
                      },
                      child: BulletText(
                        text: Text(
                          "https://docs.flutter.dev/",
                          style:
                              HowestStyle.howestTextTheme.bodyMedium.copyWith(
                            color: HowestStyle.primaryTextColor,
                          ),
                        ),
                      )),
                  InkWell(
                      onTap: () async {
                        await UrlHandler()
                            .visitUrl("https://docs.flutter.dev/codelabs");
                      },
                      child: BulletText(
                        text: Text(
                          "https://docs.flutter.dev/codelabs",
                          style:
                              HowestStyle.howestTextTheme.bodyMedium.copyWith(
                            color: HowestStyle.primaryTextColor,
                          ),
                        ),
                      )),
                  InkWell(
                      onTap: () async {
                        await UrlHandler().visitUrl(
                            "https://docs.flutter.dev/get-started/flutter-for/xamarin-forms-devs");
                      },
                      child: BulletText(
                        text: Text(
                          "https://docs.flutter.dev/get-started/flutter-for/xamarin-forms-devs",
                          style:
                              HowestStyle.howestTextTheme.bodyMedium.copyWith(
                            color: HowestStyle.primaryTextColor,
                          ),
                        ),
                      )),
                ],
              ),
            )),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Image.asset(
              "assets/images/014_01.webp",
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
