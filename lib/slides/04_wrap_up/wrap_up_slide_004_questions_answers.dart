import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';

class QuestionsAnswers extends StatelessWidget {
  const QuestionsAnswers({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 200),
          child: Text(
            'Questions?',
            style: HowestStyle.howestTextTheme.display.copyWith(color: HowestStyle.onPrimaryColor)
          ),
        ),
      ),
    );
  }
}
