import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';

class AboutMe extends StatelessWidget {
  
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 50,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                shape: BoxShape.circle
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                'assets/images/profile_pic.jpg',
                width: 400,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Thijs Pirmez',
              style: HowestStyle.howestTextTheme.subtitle.copyWith(
                color: HowestStyle.primaryTextColor
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Mobile Developer @ Howest,',
              style: HowestStyle.howestTextTheme.bodySmall.copyWith(
                color: HowestStyle.primaryTextColor
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'App dev volunteer @ VZW Binnenstad,',
              style: HowestStyle.howestTextTheme.bodySmall.copyWith(
                color: HowestStyle.primaryTextColor
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Flutter enthusiast & hobbyist.',
              style: HowestStyle.howestTextTheme.bodySmall.copyWith(
                color: HowestStyle.primaryTextColor
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/qr_linkedin.png',
              width: 400,
              fit: BoxFit.contain,
            ),
          ],
        )
      ],
    );
  }
}