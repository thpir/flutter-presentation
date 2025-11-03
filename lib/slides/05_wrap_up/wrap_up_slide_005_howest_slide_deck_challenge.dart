import 'package:flutter/material.dart';

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
          Image.asset(
            'assets/images/flutter_deck_showcase.webp',
            fit: BoxFit.contain,),
          Center(
            child: Image.asset(
              'assets/images/qr_flutter_deck.webp',
              height: 400,
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}