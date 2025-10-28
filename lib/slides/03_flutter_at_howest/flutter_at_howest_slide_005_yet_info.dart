import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:flutter_intro/templates/widgets/bullet_text.dart';

class YetInfo extends StatelessWidget {
  const YetInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 80,
      children: [
        Text(
          "”YOUTH ENVIRONMENT & ENGAGEMENT TOOL“",
          style: HowestStyle.howestTextTheme.header.copyWith(
            fontStyle: FontStyle.italic,
            color: HowestStyle.primaryTextColor
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 120.0),
            child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BulletText(
                      text: RichText(text: TextSpan(
                        style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                          color: HowestStyle.primaryTextColor
                        ),
                        children: const [
                          TextSpan(text: "Digitale ", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "participatietool voor "),
                          TextSpan(text: "Android & iOS ", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "toestellen"),
                        ]
                      )),
                      style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                        color: HowestStyle.primaryTextColor
                      ),
                    ),
                    BulletText(
                      text: RichText(text: TextSpan(
                        style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                          color: HowestStyle.primaryTextColor
                        ),
                        children: const [
                          TextSpan(text: "Ontwikkeld door "),
                          TextSpan(text: "Vital Cities & Cyber3Labs", style: TextStyle(fontWeight: FontWeight.bold)),
                        ]
                      )),
                      style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                        color: HowestStyle.primaryTextColor
                      ),
                    ),
                    BulletText(
                      text: RichText(text: TextSpan(
                        style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                          color: HowestStyle.primaryTextColor
                        ),
                        children: const [
                          TextSpan(text: "Gratis ", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "te gebruiken & beschikbaar in de App- and Play-store"),
                        ]
                      )),
                      style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                        color: HowestStyle.primaryTextColor
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: SizedBox.expand(
                  child: Image.asset(
                    "assets/images/yet_result.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
                    ),
          ))
      ],
    );
  }
}