import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';

class JasprIntroduction extends StatelessWidget {
  const JasprIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 40,
      children: [
        Image.asset(
          'assets/images/logo_jaspr.webp',
          width: 200,
          height: 200,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150.0),
            child: RichText(
              text: TextSpan(
                text: 'Jaspr is a ',
                style: HowestStyle.howestTextTheme.subtitle.copyWith(
                  color: HowestStyle.onPrimaryColor,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.normal,
                ),
                children: [
                  TextSpan(
                    text: 'modern web framework for building websites in Dart',
                    style: HowestStyle.howestTextTheme.subtitle.copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  TextSpan(
                    text: ' that looks and feels like Flutter but ',
                    style: HowestStyle.howestTextTheme.subtitle.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: 'renders actual HTML and CSS',
                    style: HowestStyle.howestTextTheme.subtitle.copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  TextSpan(
                    text: " instead of painting to canvas. It's ",
                    style: HowestStyle.howestTextTheme.subtitle.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: 'specifically designed for Flutter developers',
                    style: HowestStyle.howestTextTheme.subtitle.copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  TextSpan(
                    text: " who want to build websites (not web apps) using familiar Dart syntax and Flutter-like component patterns.",
                    style: HowestStyle.howestTextTheme.subtitle.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          )
        ),
      ],
    );
  }
}