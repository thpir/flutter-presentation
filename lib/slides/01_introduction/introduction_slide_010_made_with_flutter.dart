import 'package:flutter/material.dart';
import 'package:flutter_intro/utils/url_handler.dart';

class MadeWithFlutter extends StatelessWidget {
  const MadeWithFlutter({super.key});

  List<String?> get images => [
        "assets/images/icon_google_adds.webp",
        "assets/images/icon_covid_scan.webp",
        "assets/images/icon_telegraaf.webp",
        "assets/images/icon_mijn_mooie_straat.webp",
        "assets/images/icon_covid_safe.webp",
        "assets/images/icon_bmw_app.webp",
        "assets/images/icon_gov_app.webp",
        "assets/images/icon_engie_app.webp",
        null,
        "assets/images/icon_hue_app.webp",
        "assets/images/icon_google_wallet.webp",
        "assets/images/icon_wonderous.webp",
        null,
        null,
        "assets/images/icon_ebay.webp",
        "assets/images/icon_event_shuttle.webp",
      ];

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: 600,
                height: 600,
                child: GridView.count(
                    crossAxisCount: 4,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                    physics: const NeverScrollableScrollPhysics(),
                    children: images
                        .map((e) => e != null
                            ? Center(
                                child: SizedBox(
                                    width: 600 / 4,
                                    height: 600 / 4,
                                    child: Image.asset(
                                      e,
                                      fit: BoxFit.cover,
                                    )))
                            : Container())
                        .toList()),
              ),
            )),
        Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: InkWell(
                onTap: () {
                  UrlHandler.visitUrl("https://flutter.gskinner.com/wonderous/");
                },
                child: Image.asset(
                  "assets/images/wonderous_link.webp",
                  fit: BoxFit.cover,
                  height: 600,
                  alignment: Alignment.center,
                ),
              ),
            )),
      ],
    );
  }
}
