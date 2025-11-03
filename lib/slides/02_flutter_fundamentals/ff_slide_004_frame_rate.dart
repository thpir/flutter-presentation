import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';

class FlutterFrameRate extends StatelessWidget {
  const FlutterFrameRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120.0, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Flutter is designed to render its UI at 60 frames per second (fps), or 120 fps on devices capable of 120Hz updates. Each render is called a frame. This means that, approximately every 16ms, the UI updates to reflect animations or other changes to the UI. A frame that takes longer than 16ms to render causes jank (jerky motion) on the display device.',
            style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
              color: HowestStyle.primaryTextColor,
            ),
          ),
          Image.asset(
            'assets/images/flutter_frames_chart.webp',
            width: double.infinity,
          )
        ],
      ),
    );
  }
}