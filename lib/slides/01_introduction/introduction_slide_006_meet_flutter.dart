import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';

class MeetFlutter extends StatelessWidget {
  const MeetFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Image.asset(
                "assets/images/meet_flutter_01.webp",
                width: 500,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image.asset(
                "assets/images/meet_flutter_02.webp",
                width: 500,
              ),
            ),
          ),
          Center(
              child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                color: HowestStyle.primaryTextColor,
              ),
              children: [
                TextSpan(
                  text: "Flutter is an ",
                ),
                TextSpan(
                    text: "open source-framework\n",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: "from ",
                ),
                TextSpan(
                    text: "Google ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: "for building\n",
                ),
                TextSpan(
                  text: "beautiful, ",
                ),
                TextSpan(
                    text: "natively compiled",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: ", multi-\n",
                ),
                TextSpan(
                  text: "platform applications from ",
                ),
                TextSpan(
                    text: "one single\n",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text: "codebase.\n",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
