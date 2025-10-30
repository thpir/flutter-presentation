import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';

class StartToFlutter extends StatelessWidget {
  const StartToFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 20.0),
      child: Column(
            spacing: 60,
            children: [
      Text(
        "From idea to app in 8 weeks",
        style: HowestStyle.howestTextTheme.subtitle
            .copyWith(color: HowestStyle.primaryTextColor),
      ),
      Row(
        spacing: 40,
        children: [
          Expanded(
            child: Text(
              "Want to learn how to build apps that work on both iOS and Android in a short time? This practical Flutter refresher course will help you turn your idea into a professionally finished app step by step. Under the guidance of an experienced expert, you'll get started yourself, so by the end of the course you'll have skills you can immediately apply in your job or on your own project.",
              style: HowestStyle.howestTextTheme.bodySmall
                  .copyWith(color: HowestStyle.primaryTextColor),
            ),
          ),
          Expanded(
            child: Image.asset(
              "assets/images/qr_start_to_flutter.png",
              height: 500,
              
            ),
          )
        ],
      )
            ],
          ),
    );
  }
}
