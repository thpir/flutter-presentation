import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';

class YetCollages extends StatelessWidget {
  const YetCollages({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 120.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Create a digital collage at a public location, by dragging and dropping images from a predefined set onto a background image.",
                style: HowestStyle.howestTextTheme.bodyLarge.copyWith(
                  color: HowestStyle.primaryTextColor,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )
      ),
      const SizedBox(width: 20),
      Expanded(
        child: Image.asset(
          "assets/images/yet_mockup_collage.webp",
        ),
      ),
    ],);
  }
}