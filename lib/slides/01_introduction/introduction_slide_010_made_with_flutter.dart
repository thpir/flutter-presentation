import 'package:flutter/material.dart';

class MadeWithFlutter extends StatelessWidget {
  const MadeWithFlutter({super.key});

  List<String?> get images => [
        "assets/images/icon_google_adds.webp",
        "assets/images/icon_covid_scan.webp",
        "assets/images/icon_telegraaf.webp",
        "assets/images/icon_mijn_mooie_straat.webp",
        "assets/images/icon_covid_safe.webp",
        "assets/images/009_07.webp",
        "assets/images/009_08.webp",
        "assets/images/009_09.webp",
        null,
        "assets/images/009_10.webp",
        "assets/images/009_11.webp",
        "assets/images/009_12.webp",
        null,
        null,
        "assets/images/009_13.webp",
        "assets/images/009_14.webp",
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
              child: Image.asset(
                "assets/images/wonderous_link.webp",
                fit: BoxFit.cover,
                height: 600,
                alignment: Alignment.center,
              ),
            )),
      ],
    );
  }
}
