import 'package:flutter/material.dart';
import 'package:flutter_intro/runner_game/my_game.dart';

class FlameDemo extends StatelessWidget {
  const FlameDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: SizedBox(
          width: double.infinity, height: double.infinity, child: MyGame()),
    ));
  }
}
