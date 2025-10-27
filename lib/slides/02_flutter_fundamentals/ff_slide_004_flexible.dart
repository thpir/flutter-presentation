import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:video_player/video_player.dart';

class FlutterFlexible extends StatelessWidget {
  const FlutterFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 1,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 120),
                child: Center(
                  child: Text(
                    "With Flutter, you have control over every pixel on the screen, allowing you to create responsive designs for any screen type.",
                    style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                      color: HowestStyle.primaryTextColor,
                  ),
                  ),
                ))),
        Expanded(
          flex: 1,
          child: VideoFrame(),
        ),
      ],
    );
  }
}

class VideoFrame extends StatefulWidget {
  const VideoFrame({super.key});

  @override
  State<VideoFrame> createState() => _VideoFrameState();
}

class _VideoFrameState extends State<VideoFrame> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.asset(
      "assets/videos/008_01.mp4",
    )..initialize().then((_) {
        setState(() {});
        _controller.play();
        _controller.setLooping(true);
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : Container());
  }
}
