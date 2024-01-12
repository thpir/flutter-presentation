import 'package:flutter/material.dart';

class Slide011 extends StatelessWidget {
  const Slide011({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(left: width * 0.05),
            child: Text(
              "Flutter ondersteunt het gebruik van “Shared Packages” die door andere ontwikkelaars zijn bijgedragen aan het Flutter- en Dart- ecosysteem. Hierdoor kun je snel een app ontwikkelen zonder dat je van nul moet beginnen.",
              style: TextStyle(
                fontSize: width * 0.022,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Image.asset(
            "assets/images/011_01.png",
            width: width/3,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
