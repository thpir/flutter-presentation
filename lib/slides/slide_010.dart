import 'package:flutter/material.dart';

class Slide010 extends StatelessWidget {
  const Slide010({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Bullet(text: "UI wordt opgebouwd uit Widgets = Widget Tree", width: width),
                  Bullet(text: "Widgets beschrijven hoe een 'View' eruit moet zien", width: width),
                  Bullet(text: "Widget = Object (class) in Dart", width: width),
                  Bullet(text: "Widget heeft een 'lifecycle'", width: width),
                  Bullet(text: "Custom widgets", width: width),
                ],
              ),
            )),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(right: width * 0.05),
            child: Image.asset(
              "assets/images/010_01.png",
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}

class Bullet extends StatelessWidget {
  final String text;
  final double width;
  const Bullet({required this.text, required this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "• ",
          style: TextStyle(
            fontSize: width * 0.022,
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: width * 0.022,
            ),
          ),
        ),
      ],
    );
  }
}
