import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class LambrechtInfo extends StatelessWidget {
  const LambrechtInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: VideoFrame(),
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
      "assets/videos/lambrecht_promovideo.mp4",
    )..initialize().then((_) {
        setState(() {});
        _controller.play();
        _controller.setVolume(0);
        _controller.setLooping(false);
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