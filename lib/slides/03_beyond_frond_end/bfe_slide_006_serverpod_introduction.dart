import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';

class ServerpodIntroduction extends StatelessWidget {
  const ServerpodIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 200.0),
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Text(
                "Serverpod is an open-source, scalable app server, written in Dart for the Flutter community.",
                style: HowestStyle.howestTextTheme.subtitle.copyWith(color: HowestStyle.onPrimaryColor, fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,)
            ),
          ),
          Expanded(
            child: Image.asset("assets/images/serverpod_bg.webp", fit: BoxFit.contain,),
          ),
        ],
      ),
    ); 
  }
}