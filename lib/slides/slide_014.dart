import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Slide014 extends StatelessWidget {
  const Slide014({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Bullet(text: "https://docs.flutter.dev/", width: width),
                  Bullet(
                      text: "https://docs.flutter.dev/codelabs", width: width),
                  Bullet(
                      text:
                          "https://docs.flutter.dev/get-started/flutter-for/xamarin-forms-devs",
                      width: width),
                ],
              ),
            )),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.only(right: width * 0.05),
            child: Image.asset(
              "assets/images/014_01.png",
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
  final double width;
  const Bullet({required this.text, required this.width, super.key});

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    var url = Uri.parse(text);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: width * 0.005),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "• ",
            style: TextStyle(
              fontSize: width * 0.022,
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
                style: TextStyle(
                  fontSize: width * 0.022,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
