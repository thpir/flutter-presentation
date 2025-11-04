import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:flutter_intro/utils/url_handler.dart';
import 'package:video_player/video_player.dart';

class YetAiDemo extends StatelessWidget {
  const YetAiDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 20,
        children: [
          Expanded(child: VideoFrame()),
          TextButton.icon(
            onPressed: () async {
              await UrlHandler
                  .visitUrl("https://www.youtube.com/watch?v=R-_OANgCEP0");
            },
            label: Text(
              "Watch the full informational video on YouTube",
              style: HowestStyle.howestTextTheme.bodySmall
                  .copyWith(color: HowestStyle.onPrimaryColor),
            ),
            icon: Icon(
              Icons.movie_creation_outlined,
              color: HowestStyle.onPrimaryColor,
              size: 40,
            ),
          ),
        ],
      ),
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
      "assets/videos/yet_ai_demo.mp4",
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
