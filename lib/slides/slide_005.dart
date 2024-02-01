import 'package:flutter/material.dart';

class Slide005 extends StatelessWidget {
  const Slide005({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Bullet(text: "Ontwikkeld door Google"),
                  Bullet(text: "Type-safe"),
                  Bullet(text: "Object-oriented"),
                  Bullet(text: "Built-in null-safety"),
                  Bullet(text: "Hoofdzakelijk (maar niet noodzakelijk) gebruikt voor Flutter"),
                  Bullet(text: "Eenvoudig om te leren"),
                ],
              ),
            )),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(right: 100),
            child: Image.asset(
              "assets/images/005_01.png",
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
