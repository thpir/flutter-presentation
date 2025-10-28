import 'package:flutter/material.dart';

class BulletText extends StatelessWidget {
  final Widget text;
  final TextStyle? style;
  const BulletText({required this.text, this.style, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "• ",
          style: style,
        ),
        Expanded(
          child: text,
        ),
      ],
    );
  }
}