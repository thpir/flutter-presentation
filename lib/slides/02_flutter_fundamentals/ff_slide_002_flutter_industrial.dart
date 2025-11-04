import 'package:flutter/material.dart';
import 'package:flutter_intro/utils/url_handler.dart';

class FlutterIndustrial extends StatelessWidget {
  const FlutterIndustrial({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 200,
        children: [
          Image.asset(
            'assets/images/flutter_pi_project.webp',
            fit: BoxFit.contain,),
          Center(
            child: InkWell(
              onTap: () {
                UrlHandler.visitUrl("https://www.industrialflutter.com/");
              },
              child: Image.asset(
                'assets/images/qr_flutter_industrial.webp',
                height: 400,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
    );
  }
}