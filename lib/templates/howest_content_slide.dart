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

  HowestContentSlide(
      {required this.title,
      required this.titleIconPath,
      required this.slideContent,
      required this.pageNumber,
      required this.route})
      : super(
          configuration: FlutterDeckSlideConfiguration(
            route: route,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return FlutterDeckSlide.template(
      backgroundBuilder: (context) => FlutterDeckBackground.solid(
        Theme.of(context).colorScheme.background,
      ),
      contentBuilder: (context) => ColoredBox(
        color: HowestStyle.backgroundColor,
        child: Container(
          color: HowestStyle.backgroundColor,
          width: double.infinity,
          height: double.infinity,
          child: slideContent,
        ),
      ),
      footerBuilder: (context) => ColoredBox(
        color: HowestStyle.backgroundColor,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: width * 0.025),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: HowestStyle.primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.05),
                            child: Text(
                                "${DateFormat('dd/MM/yyyy').format(DateTime.now())} - Flutter demo",
                                style: TextStyle(
                                  color: HowestStyle.onPrimaryColor,
                                  fontSize: width * 0.015,
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.05),
                            child: Text(pageNumber,
                                style: TextStyle(
                                  color: HowestStyle.onPrimaryColor,
                                  fontSize: width * 0.015,
                                )),
                          ),
                        ]),
                  ),
                ),
              ),
              Image.asset(
                "assets/images/howest_logo.jpeg",
                height: width * 0.05,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ),
      headerBuilder: (context) => ColoredBox(
        color: HowestStyle.backgroundColor,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.05, vertical: width * 0.025),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(children: [
                Image.asset(
                  titleIconPath,
                  fit: BoxFit.contain,
                  width: width * 0.05,
                  height: width * 0.05,
                ),
                const SizedBox(width: 16.0),
                Text(
                  title,
                  style: TextStyle(
                    color: HowestStyle.primaryTextColor,
                    fontSize: width * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
              const SizedBox(height: 8.0),
              const Divider(
                height: 6,
                color: HowestStyle.primaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
