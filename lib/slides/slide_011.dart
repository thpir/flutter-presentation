import 'package:flutter/material.dart';

class Slide011 extends StatelessWidget {
  const Slide011({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(left: 80),
            child: Text(
              "Flutter ondersteunt het gebruik van “Shared Packages” die door andere ontwikkelaars zijn bijgedragen aan het Flutter- en Dart- ecosysteem. Hierdoor kun je snel een app ontwikkelen zonder dat je van nul moet beginnen.",
              style: TextStyle(
                fontSize: 46,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Image.asset(
            "assets/images/011_01.png",
            width: 500,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
