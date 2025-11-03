import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:flutter_intro/utils/url_handler.dart';

class FlameEngine extends StatelessWidget {
  const FlameEngine({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 120.0,),
      child: Row(
        spacing: 20,
        children: [
          Expanded(
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                    color: HowestStyle.primaryTextColor,
                  ),
                children: [
                  const TextSpan(
                    text: 'Flame is an ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(
                    text:
                        'open source ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(
                    text:
                        'modular ',
                  ),
                  const TextSpan(
                    text:
                        '2D game engine built on top of Flutter',
                        style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(
                    text:
                        ', providing a game loop, components, input, physics, audio, and rendering primitives while integrating seamlessly with Flutter widgets via GameWidget.',
                  ),
                ]
                ),),
            )
          ),
          Expanded(
            child: Center(
              child: InkWell(
                onTap: () {
                  UrlHandler().visitUrl("https://flame-engine.org/");
                },
                child: Image.asset(
                  'assets/images/qr_get_started_flame.webp',
                  width: 500,
                ),
              ),
            ))
        ],
      ),
    );
  }
}

