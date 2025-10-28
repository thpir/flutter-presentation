import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';

class TodaysJourney extends StatelessWidget {
  const TodaysJourney({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 400),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 40,
        children: [
          Text(
            "1. Introduction",
            style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
              color: HowestStyle.onPrimaryColor,
            ),
          ),
          Text(
            "2. Flutter fundamentals",
            style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
              color: HowestStyle.onPrimaryColor,
            ),
          ),
          Text(
            "4. Beyond front-end",
            style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
              color: HowestStyle.onPrimaryColor,
            ),
          ),
          Text(
            "4. Flutter at Howest",
            style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
              color: HowestStyle.onPrimaryColor,
            ),
          ),
          Text(
            "5. Wrap-up and Q&A",
            style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
              color: HowestStyle.onPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}