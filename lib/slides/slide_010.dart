import 'package:flutter/material.dart';

class Slide010 extends StatelessWidget {
  const Slide010({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Bullet(text: "UI wordt opgebouwd uit Widgets = Widget Tree"),
                  Bullet(text: "Widgets beschrijven hoe een 'View' eruit moet zien"),
                  Bullet(text: "Widget = Object (class) in Dart"),
                  Bullet(text: "Widget heeft een 'lifecycle'"),
                  Bullet(text: "Custom widgets"),
                ],
              ),
            )),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(
              "assets/images/010_01.webp",
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
  const Bullet({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          "• ",
          style: TextStyle(
            fontSize: 46,
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 46,
            ),
          ),
        ),
      ],
    );
  }
}
