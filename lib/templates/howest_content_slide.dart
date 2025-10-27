import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:intl/intl.dart';

class HowestContentSlide extends FlutterDeckSlideWidget {
  final String title;
  final String titleIconPath;
  final Widget slideContent;
  final String pageNumber;
  final String route;
  final Image? background;
  final Color? backgroundOverlay;

  HowestContentSlide(
      {super.key,
      required this.title,
      required this.titleIconPath,
      required this.slideContent,
      required this.pageNumber,
      required this.route,
      this.background,
      this.backgroundOverlay})
      : super(
          configuration: FlutterDeckSlideConfiguration(
            route: route,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      backgroundBuilder: (context) => background == null
          ? FlutterDeckBackground.solid(
              HowestStyle.backgroundColor,
            )
          : FlutterDeckBackground.image(background!),
      contentBuilder: (context) => Container(
        width: double.infinity,
        height: double.infinity,
        color: backgroundOverlay ?? HowestStyle.backgroundColor,
        child: slideContent,
      ),
      footerBuilder: (context) => ColoredBox(
        color: backgroundOverlay ?? HowestStyle.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: HowestStyle.primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Text(
                                "${DateFormat('dd/MM/yyyy').format(DateTime.now())} - Flutter: the future of cross-platform development",
                                style: HowestStyle.howestTextTheme.bodySmall.copyWith(
                                  color: HowestStyle.onPrimaryColor,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 100),
                            child: Text(pageNumber,
                                style: HowestStyle.howestTextTheme.bodySmall.copyWith(
                                  color: HowestStyle.onPrimaryColor,
                                )),
                          ),
                        ]),
                  ),
                ),
              ),
              Image.asset(
                "assets/images/howest_logo.png",
                height: 100,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ),
      headerBuilder: (context) => ColoredBox(
        color: backgroundOverlay ?? HowestStyle.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 60),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(children: [
                Image.asset(
                  titleIconPath,
                  fit: BoxFit.contain,
                  width: 70,
                  height: 70,
                ),
                const SizedBox(width: 40.0),
                Expanded(
                  child: AutoSizeText(
                    title,
                    minFontSize: 20,
                    maxFontSize: 70,
                    style: HowestStyle.howestTextTheme.header.copyWith(
                      color: HowestStyle.primaryTextColor,
                    ),
                    maxLines: 1,
                  ),
                ),
              ]),
              const SizedBox(height: 8.0),
              const Divider(
                height: 12,
                color: HowestStyle.primaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
