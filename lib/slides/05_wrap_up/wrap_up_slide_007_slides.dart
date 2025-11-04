import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';

class PresentationLink extends StatelessWidget {
  const PresentationLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 20,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Link to the presentation:", style: HowestStyle.howestTextTheme.subtitle.copyWith(color: HowestStyle.onPrimaryColor),),
          Image.asset(
            'assets/images/qr_presentation.webp',
            height: 500,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}