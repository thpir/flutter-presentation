import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';

class SlideWelcome extends StatelessWidget {
  const SlideWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 300),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Flutter: the future of\ncross-platform \ndevelopment",
                      style: HowestStyle.howestTextTheme.title.copyWith(
                        color: HowestStyle.onPrimaryColor,
                      ),
                    ),
                    SizedBox(height: 50),
                    Text(
                      "Thijs Pirmez",
                      style: HowestStyle.howestTextTheme.subtitle.copyWith(
                            color: HowestStyle.onPrimaryColor,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                "assets/images/personalized_dash.webp",
                height: 700,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ));
  }
}
