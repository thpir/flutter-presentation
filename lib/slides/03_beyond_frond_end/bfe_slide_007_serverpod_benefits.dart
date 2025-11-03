import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:flutter_intro/utils/url_handler.dart';

class ServerpodBenefits extends StatelessWidget {
  const ServerpodBenefits({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 120.0),
        child: Row(
          spacing: 40,
          children: [
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 40,
                children: [
                  BenefitTag(iconPath: "assets/images/icon_open_source.webp", titleText: "Free & open source", descriptionText: "Serverpod is free, open-source, and constantly improving. You can host your server anywhere you can run Dart."),
                  BenefitTag(iconPath: "assets/images/icon_flutter_grey.webp", titleText: "Made for Flutter", descriptionText: "Serverpod follows all Dart and Flutter best practices. You will instantly be productive and feel at home."),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 40,
                children: [
                  const BenefitTag(iconPath: "assets/images/icon_code_grey.webp", titleText: "Simple, beautiful code", descriptionText: "Every design decision made in Serverpod aims to make your server code as fast to write and as readable as possible."),
                  Center(child: InkWell(
                    onTap: () {
                      UrlHandler().visitUrl("https://serverpod.dev/");
                    },
                    child: Image.asset("assets/images/qr_serverpod.webp", width: 300, fit: BoxFit.contain,))),

                ],
              ),
            ),
          ],
        ));
  }
}

class BenefitTag extends StatelessWidget {
  final String iconPath;
  final String titleText;
  final String descriptionText;

  const BenefitTag({super.key, required this.iconPath, required this.titleText, required this.descriptionText});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        Image.asset(
          iconPath,
          width: 160,
          fit: BoxFit.contain,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20,
            children: [
              Text(titleText, style: HowestStyle.howestTextTheme.subtitle.copyWith(color: HowestStyle.primaryTextColor),),
              Text(descriptionText, style: HowestStyle.howestTextTheme.bodyMedium.copyWith(color: HowestStyle.primaryTextColor),),
            ],
          ),
        ),
      ],
    );
  }
}
