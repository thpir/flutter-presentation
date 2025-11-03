import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';

class QuestionsAnswers extends StatelessWidget {
  const QuestionsAnswers({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 40,
        children: [
          Text(
            'Questions?',
            style: HowestStyle.howestTextTheme.display.copyWith(color: HowestStyle.onPrimaryColor)
          ),
          Image.asset(
            'assets/images/flutter_is_amazing_meme.webp',
            height: 600,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
