import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Slide008 extends StatelessWidget {
  const Slide008({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 1,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Center(
                  child: Text(
                    "Met Flutter heb je controle over elke pixel op het scherm. Zo kan je responsieve ontwerpen creëren voor elk type scherm.",
                    style: TextStyle(
                      fontSize: width * 0.025,
                    ),
                  ),
                ))),
        const Expanded(
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
      });
    _controller.play();
    _controller.setLooping(true);
    super.initState();
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
