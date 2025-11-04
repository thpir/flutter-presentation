import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:flutter_intro/templates/widgets/bullet_text.dart';
import 'package:flutter_intro/utils/url_handler.dart';

class DrawingWithCustomPaint extends StatelessWidget {
  const DrawingWithCustomPaint({super.key});

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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              spacing: 20,
              children: [
                BulletText(
                  text: RichText(
                    text: TextSpan(
                      style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                        color: HowestStyle.primaryTextColor,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'CustomPaint',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' widget.'),
                      ],
                    ),
                  ),
                  style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                        color: HowestStyle.primaryTextColor,
                      ),),
                BulletText(
                  text: RichText(
                    text: TextSpan(
                      style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                        color: HowestStyle.primaryTextColor,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'Wrapped in a '),
                        TextSpan(
                          text: 'Listener',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' widget to detect your cursor or finger movement.'),
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
                        TextSpan(text: 'Every event (onPointerdown ➜ onPointerMove ➜ onPointerUp) creates a '),
                        TextSpan(
                          text: 'Sketch',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' object.'),
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
                        TextSpan(text: 'Every sketch is displayed in the defined area as a '),
                        TextSpan(
                          text: 'Paint',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' object.'),
                      ],
                    ),
                  ),
                  style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                        color: HowestStyle.primaryTextColor,
                      ),
                ),
                Expanded(child: SizedBox(),),
                Text(
                  'Credit for the introduction to the CustomPaint widget:',
                  style: HowestStyle.howestTextTheme.bodySmall.copyWith(
                      color: HowestStyle.primaryTextColor,
                    ),),
                SizedBox(height: 20,),
                TextButton(
                  style: ButtonStyle(
                    padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                  ),
                  onPressed: () {
                    UrlHandler.visitUrl('https://youtu.be/SmqttvYdkHI?si=SfUCTIh2C0oRQa0j');
                  }, 
                  child: Text(
                    'https://youtu.be/SmqttvYdkHI?si=SfUCTIh2C0oRQa0j',
                    style: HowestStyle.howestTextTheme.bodySmall.copyWith(
                      color: HowestStyle.primaryColor,
                    ),
                  )
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 50.0),
          child: Image(
            image: AssetImage('assets/images/gen_ai_in_flutter_paint.webp'),
            fit: BoxFit.contain,
            height: double.infinity,
          ),
        ),
      ],
    );
  }
}