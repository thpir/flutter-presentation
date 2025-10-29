import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:flutter_intro/templates/widgets/bullet_text.dart';

class CreatingTheMask extends StatelessWidget {
  const CreatingTheMask({super.key});

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
                          text: 'After providing your prompt, prior to posting the request, we need to '
                        ),
                        TextSpan(
                          text: 'create the mask',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' from our sketch.'),
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
                        TextSpan(text: 'A '),
                        TextSpan(
                          text: 'Stack',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' widget containing 3 layers.'),
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
                        TextSpan(text: 'The '),
                        TextSpan(
                          text: 'Mask',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' layer is a Container widget with a '),
                        TextSpan(
                          text: 'black background',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: '.'),
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
                        TextSpan(text: 'The '),
                        TextSpan(
                          text: 'sketches are copied',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' from the MaskPainter layer to the Mask layer and the Sketch its '),
                        TextSpan(
                          text: 'color property is changed to white',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: '.'),
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
            image: AssetImage('assets/images/mask_in_flutter_code.png'),
            fit: BoxFit.contain,
            height: double.infinity,
          ),
        ),
      ],
    );
  }
}