import 'package:flutter/material.dart';

class CounterAppWidgetTree extends StatelessWidget {
  const CounterAppWidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Image.asset(
        "assets/images/counter_app_widget_tree.png",
        fit: BoxFit.contain,),
    );
  }
}