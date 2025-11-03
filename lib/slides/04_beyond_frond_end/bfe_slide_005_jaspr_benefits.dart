import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:flutter_intro/templates/widgets/bullet_text.dart';

class JasprBenefits extends StatelessWidget {
  const JasprBenefits({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 120),
              child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
              BulletText(
                text: RichText(
                  text: TextSpan(
                    text: 'Familiar Component Model: ',
                    style: HowestStyle.howestTextTheme.bodySmall.copyWith(
                        color: HowestStyle.primaryTextColor,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text:
                            "Uses StatelessComponent, StatefulComponent, and InheritedComponent—nearly identical to Flutter's widget system with build() methods and setState().",
                        style: HowestStyle.howestTextTheme.bodySmall.copyWith(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                style: HowestStyle.howestTextTheme.bodySmall.copyWith(
                  color: HowestStyle.primaryTextColor,
                ),
              ),
              BulletText(
                text: RichText(
                  text: TextSpan(
                    text: 'Better SEO: ',
                    style: HowestStyle.howestTextTheme.bodySmall.copyWith(
                        color: HowestStyle.primaryTextColor,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text:
                            "Renders native HTML/CSS with server-side rendering (SSR) out of the box, solving Flutter Web's SEO limitations.",
                        style: HowestStyle.howestTextTheme.bodySmall.copyWith(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                style: HowestStyle.howestTextTheme.bodySmall.copyWith(
                  color: HowestStyle.primaryTextColor,
                ),
              ),
              BulletText(
                text: RichText(
                  text: TextSpan(
                    text: 'Pure Dart Development: ',
                    style: HowestStyle.howestTextTheme.bodySmall.copyWith(
                        color: HowestStyle.primaryTextColor,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text:
                            "Write everything in Dart without JavaScript, leveraging type safety and null safety.",
                        style: HowestStyle.howestTextTheme.bodySmall.copyWith(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                style: HowestStyle.howestTextTheme.bodySmall.copyWith(
                  color: HowestStyle.primaryTextColor,
                ),
              ),
              BulletText(
                text: RichText(
                  text: TextSpan(
                    text: 'Reuse Your Skills: ',
                    style: HowestStyle.howestTextTheme.bodySmall.copyWith(
                        color: HowestStyle.primaryTextColor,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text:
                            "BuildContext, state management (Riverpod/Provider), and component composition work just like Flutter.",
                        style: HowestStyle.howestTextTheme.bodySmall.copyWith(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                style: HowestStyle.howestTextTheme.bodySmall.copyWith(
                  color: HowestStyle.primaryTextColor,
                ),
              ),
              BulletText(
                text: RichText(
                  text: TextSpan(
                    text: 'Can Embed Flutter: ',
                    style: HowestStyle.howestTextTheme.bodySmall.copyWith(
                        color: HowestStyle.primaryTextColor,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text:
                            "Supports embedding actual Flutter web apps within Jaspr sites for hybrid approaches.",
                        style: HowestStyle.howestTextTheme.bodySmall.copyWith(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                style: HowestStyle.howestTextTheme.bodySmall.copyWith(
                  color: HowestStyle.primaryTextColor,
                ),
              ),
                        ],
                      ),
            )),
        Expanded(child: Image.asset("assets/images/dart_website_screenshot.png"))
      ],
    );
  }
}
