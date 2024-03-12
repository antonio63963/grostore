import 'package:flutter/material.dart';
import 'package:grocery_shopping_app/screens/intro_screen/widgets/header_intro.dart';
import 'package:grocery_shopping_app/screens/intro_screen/widgets/intro_buttons_section.dart';
import 'package:grocery_shopping_app/screens/intro_screen/widgets/video_bacground.dart';
import 'package:video_player/video_player.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/intro.mp4')
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          VideoBackground(
            controller: _controller,
          ),
          const HeaderIntro(),
          IntroButtonSection(
            onAuthButton: () {},
            onGuestButton: () {},
          ),
        ],
      ),
    );
  }
}
