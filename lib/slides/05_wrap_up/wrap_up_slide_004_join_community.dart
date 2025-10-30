import 'package:flutter/material.dart';
import 'package:flutter_intro/utils/url_handler.dart';

class JoinCommunity extends StatelessWidget {
  const JoinCommunity({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 40,
      children: [
        Image.asset("assets/images/logo_flutter_belgium.webp", height: 300),
        Image.asset("assets/images/qr_flutter_belgium.png", height: 300),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 60,
          children: [
            InkWell(
                onTap: () async {
                  await UrlHandler().visitUrl("https://join.slack.com/t/flutter-belgium/shared_invite/zt-2w7m73ron-5NZWiebmvxXAzBairbAisw");
                },
                child: Image.asset("assets/images/logo_slack.webp",
                    height: 80)),
            InkWell(
                onTap: () async {
                  await UrlHandler().visitUrl("https://www.meetup.com/flutter-belgium/");
                },
                child: Image.asset("assets/images/logo_meetup.webp",
                    height: 80)),
            InkWell(
                onTap: () async {
                  await UrlHandler().visitUrl("https://github.com/flutter-belgium");
                },
                child: Image.asset("assets/images/logo_github.webp",
                    height: 80)),
            InkWell(
                onTap: () async {
                  await UrlHandler().visitUrl("https://www.linkedin.com/company/flutter-belgium/");
                },
                child: Image.asset("assets/images/logo_linkedin.webp",
                    height: 80)),
            InkWell(
                onTap: () async {
                  await UrlHandler().visitUrl("https://www.youtube.com/@flutter-belgium");
                },
                child: Image.asset("assets/images/logo_youtube.webp",
                    height: 80)),
          ],
        )
      ],
    );
  }
}
