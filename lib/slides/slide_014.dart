import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Slide014 extends StatelessWidget {
  const Slide014({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Bullet(text: "https://docs.flutter.dev/"),
                  Bullet(
                      text: "https://docs.flutter.dev/codelabs"),
                  Bullet(
                      text:
                          "https://docs.flutter.dev/get-started/flutter-for/xamarin-forms-devs"),
                ],
              ),
            )),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Image.asset(
              "assets/images/014_01.webp",
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}

class Bullet extends StatelessWidget {
  final String text;
  const Bullet({required this.text, super.key});

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    var url = Uri.parse(text);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "• ",
            style: TextStyle(
              fontSize: 46,
            ),
          ),
          Expanded(
            child: TextButton(
              style: const ButtonStyle(alignment: Alignment.topLeft),
              onPressed: () async {
                await _launchUrl(url);
              },
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 46,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
