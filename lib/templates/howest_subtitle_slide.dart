import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_intro/howest_style.dart';

class HowestSubtitleSlide extends FlutterDeckSlideWidget {
  final Widget slideContent;
  final String route;

  HowestSubtitleSlide(
      {super.key, required this.slideContent,
      required this.route})
      : super(
          configuration: FlutterDeckSlideConfiguration(
            route: route,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      backgroundBuilder: (context) => const FlutterDeckBackground.gradient(
        LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
          stops: [0.1, 0.1],
          colors: [
            HowestStyle.backgroundColor,
            HowestStyle.primaryColor
          ]
        )
      ),
      contentBuilder: (context) => slideContent,
      headerBuilder: (context) => ColoredBox(
        color: Colors.transparent,
        child: Image.asset(
                "assets/images/howest_neutraal.webp",
                fit: BoxFit.contain,
                width: 400,
              ),
      ),
    );
  }
}
