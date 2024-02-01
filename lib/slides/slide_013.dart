import 'package:flutter/material.dart';
import 'package:flutter_intro/runner_game/my_game.dart';

class Slide013 extends StatelessWidget {
  const Slide013({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   double width = MediaQuery.of(context).size.width;
  //   return Center(
  //     child: SizedBox(
  //       width: width * 0.8,
  //       height: width * 0.5,
  //       child: Image.asset("assets/images/013_01.png")
  //     )
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: MyGame()
        ),
      )
    );
  }
}