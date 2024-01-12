import 'package:flutter/material.dart';

class Slide009 extends StatelessWidget {
  const Slide009({super.key});

  List<String?> get images => [
        "assets/images/009_02.png",
        "assets/images/009_03.png",
        "assets/images/009_04.png",
        "assets/images/009_05.png",
        "assets/images/009_06.png",
        "assets/images/009_07.png",
        "assets/images/009_08.png",
        "assets/images/009_09.png",
        null,
        "assets/images/009_10.png",
        "assets/images/009_11.png",
        "assets/images/009_12.png",
        null,
        null,
        "assets/images/009_13.png",
        "assets/images/009_14.png",
      ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: width * 0.3,
                height: width * 0.3,
                child: GridView.count(
                  crossAxisCount: 4,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                  physics: const NeverScrollableScrollPhysics(),
                  children: images
                      .map((e) => e != null
                          ? Center(
                            child: SizedBox(
                              width: width * 0.3 / 4,
                              height: width * 0.3 / 4,
                              child: Image.asset(
                                  e,
                                  fit: BoxFit.cover,
                              )
                            )
                          )
                          : Container())
                      .toList()
                ),
              ),
            )),
        Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Image.asset(
                "assets/images/009_01.png",
                fit: BoxFit.cover,
                height: width * 0.3,
                alignment: Alignment.center,
              ),
            )),
      ],
    );
  }
}
