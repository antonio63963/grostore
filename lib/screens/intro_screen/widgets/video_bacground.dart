import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoBackground extends StatelessWidget {
  final VideoPlayerController _controller;
  const VideoBackground({super.key, required controller}) : _controller = controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: FittedBox(
        fit: BoxFit.cover,
        child: SizedBox(
          width: _controller.value.size.width,
          height: _controller.value.size.height,
          child: VideoPlayer(_controller),
        ),
      ),
    );
  }
}
