import 'package:flutter/material.dart';

class LambrechtTagReader extends StatelessWidget {
  const LambrechtTagReader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Image.asset(
        "assets/images/lambrecht_tag_reader.webp",
        fit: BoxFit.fitHeight,
      ),
    );
  }
}