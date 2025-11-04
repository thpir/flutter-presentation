import 'package:flutter/material.dart';
import 'package:flutter_intro/utils/url_handler.dart';

class HowestSlideDeckChallenge extends StatelessWidget {
  const HowestSlideDeckChallenge({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 20,
        children: [
          InkWell(
            onTap: () {
              UrlHandler.visitUrl("https://flutterdeck.dev/showcase/");
            },
            child: Image.asset(
              'assets/images/flutter_deck_showcase.webp',
              fit: BoxFit.contain,
            ),
          ),
          Center(
            child: InkWell(
              onTap: () {
                UrlHandler.visitUrl("https://github.com/thpir/flutter-deck-howest-template");
              },
              child: Image.asset(
                'assets/images/qr_flutter_deck_howest.webp',
                height: 400,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
    );
  }
}
