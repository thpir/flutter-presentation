import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';

class Slide001 extends StatelessWidget {
  const Slide001({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Image.asset(
                "assets/images/001_01.png",
                width: 500,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image.asset(
                "assets/images/001_02.png",
                width: 500,
              ),
            ),
          ),
          Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 46,
                  color: HowestStyle.primaryTextColor,
                ),
                children: [
                  TextSpan(
                    text: "Flutter is een ",
                  ),
                  TextSpan(
                    text: "open source-framework\n",
                    style: TextStyle(fontWeight: FontWeight.bold)
                  ),
                  TextSpan(
                    text: "van ",
                  ),
                  TextSpan(
                    text: "Google ",
                    style: TextStyle(fontWeight: FontWeight.bold)
                  ),
                  TextSpan(
                    text: "voor het bouwen van\n",
                  ),
                  TextSpan(
                    text: "prachtige, ",
                  ),
                  TextSpan(
                    text: "native gecompileerde",
                    style: TextStyle(fontWeight: FontWeight.bold)
                  ),
                  TextSpan(
                    text: ", multi-\n",
                  ),
                  TextSpan(
                    text: "platformapplicaties vanuit ",
                  ),
                  TextSpan(
                    text: "één\n",
                    style: TextStyle(fontWeight: FontWeight.bold)
                  ),
                  TextSpan(
                    text: "codebase.\n",
                    style: TextStyle(fontWeight: FontWeight.bold)
                  ),
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}
