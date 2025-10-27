import 'package:flutter/material.dart';

class MadeWithFlutter extends StatelessWidget {
  const MadeWithFlutter({super.key});

  List<String?> get images => [
        "assets/images/009_02.webp",
        "assets/images/009_03.webp",
        "assets/images/009_04.webp",
        "assets/images/009_05.webp",
        "assets/images/009_06.webp",
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
                "assets/images/009_01.webp",
                fit: BoxFit.cover,
                height: 600,
                alignment: Alignment.center,
              ),
            )),
      ],
    );
  }
}
