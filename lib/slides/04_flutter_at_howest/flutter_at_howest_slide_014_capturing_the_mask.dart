import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:flutter_intro/templates/widgets/bullet_text.dart';

class CapturingTheMask extends StatelessWidget {
  const CapturingTheMask({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                BulletText(
                  text: RichText(
                    text: TextSpan(
                      style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                        color: HowestStyle.primaryTextColor,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text:
                                'Mask and OriginalImage are wrapped inside a '),
                        TextSpan(
                          text: 'RepaintBoundary',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' widget.'),
                      ],
                    ),
                  ),
                  style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                    color: HowestStyle.primaryTextColor,
                  ),
                ),
                BulletText(
                  text: RichText(
                    text: TextSpan(
                      style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                        color: HowestStyle.primaryTextColor,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'With this widget you can '),
                        TextSpan(
                          text: 'capture a widget',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                            text:
                                ' that is rendered on screen and convert it to an image format.'),
                      ],
                    ),
                  ),
                  style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                    color: HowestStyle.primaryTextColor,
                  ),
                ),
                BulletText(
                  text: RichText(
                    text: TextSpan(
                      style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                        color: HowestStyle.primaryTextColor,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text:
                                'Ensure that both the mask and the image have the same dimensions.'),
                      ],
                    ),
                  ),
                  style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                    color: HowestStyle.primaryTextColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 50.0),
          child: Image(
            image: AssetImage('assets/images/mask_capture_in_flutter.webp'),
            fit: BoxFit.contain,
            height: double.infinity,
          ),
        ),
      ],
    );
  }
}
