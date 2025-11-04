import 'package:flutter/material.dart';

class CoreConceptsPlatformChannels extends StatelessWidget {
  const CoreConceptsPlatformChannels({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "assets/images/method_channels.webp",
        height: double.infinity,
        fit: BoxFit.contain,
      ),
    );
  }
}