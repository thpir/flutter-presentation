import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:flutter_intro/templates/widgets/bullet_text.dart';

class LambrechtProblem extends StatelessWidget {
  const LambrechtProblem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Padding(
          padding: const EdgeInsets.only(left: 120.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 40,
            children: [
              BulletText(
                text:  RichText(
                  text: TextSpan(
                    style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    ),
                    children: const [
                      TextSpan(text: "Financial: ", style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: "Customers do not want to pay for tag-readers"),
                    ],
                  ),
                ),
                style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                  color: HowestStyle.primaryTextColor,
                ),
              ),
              BulletText(
                text:  RichText(
                  text: TextSpan(
                    style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    ),
                    children: const [
                      TextSpan(text: "Human error: ", style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: "Sometimes tag on pipe A, but hose on pipe B"),
                    ],
                  ),
                ),
                style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                  color: HowestStyle.primaryTextColor,
                ),
              ),
              BulletText(
                text:  RichText(
                  text: TextSpan(
                    style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    ),
                    children: const [
                      TextSpan(text: "Marketing: ", style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: "System is outdated"),
                    ],
                  ),
                ),
                style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                  color: HowestStyle.primaryTextColor,
                ),
              ),
              BulletText(
                text:  RichText(
                  text: TextSpan(
                    style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                    ),
                    children: const [
                      TextSpan(text: "Timing: ", style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: "30 Days for Proof-Of-Concept"),
                    ],
                  ),
                ),
                style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                  color: HowestStyle.primaryTextColor,
                ),
              ),
            ],
          ),
        )),
        Expanded(child: 
        SizedBox.expand(
          child: Image.asset("assets/images/lambrecht_problem.webp", fit: BoxFit.contain,),
        )),
      ],
    );
  }
}