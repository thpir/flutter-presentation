import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_intro/howest_style.dart';

class HowestTitleSlide extends FlutterDeckSlideWidget {
  final Widget slideContent;

  HowestTitleSlide({required this.slideContent})
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/title-slide',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return FlutterDeckSlide.template(
      backgroundBuilder: (context) => const FlutterDeckBackground.gradient(
        LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
          stops: [0.2, 0.2],
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
                "assets/images/howest_neutraal.png",
                fit: BoxFit.contain,
                width: width * 0.4,
              ),
      ),
    );
  }
}
