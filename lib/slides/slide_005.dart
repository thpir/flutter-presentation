import 'package:flutter/material.dart';

class Slide005 extends StatelessWidget {
  const Slide005({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Bullet(text: "Ontwikkeld door Google", width: width),
                  Bullet(text: "Type-safe", width: width),
                  Bullet(text: "Object-oriented", width: width),
                  Bullet(text: "Built-in null-safety", width: width),
                  Bullet(text: "Hoofdzakelijk (maar niet noodzakelijk) gebruikt voor Flutter", width: width),
                  Bullet(text: "Eenvoudig om te leren", width: width),
                ],
              ),
            )),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.only(right: width * 0.05),
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
            fontSize: width * 0.025,
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: width * 0.025,
            ),
          ),
        ),
      ],
    );
  }
}
