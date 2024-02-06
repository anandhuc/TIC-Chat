import 'dart:developer';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tic_chat/screens/screen%20chat/screen-chat.dart';

// class Splash extends StatelessWidget {
//   Splash({super.key});
//   AssetsAudioPlayer player = AssetsAudioPlayer();
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  AssetsAudioPlayer player = AssetsAudioPlayer();
  @override
  void initState() {
    try {
      player.open(Audio('assets/audios/startup.mp3'));
    } catch (e) {
      log('message    >>>  $e');
    }

    log('message');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    delay(cntx: context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 9, 20, 26),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/white-logo.png'),
          ],
        ),
      ),
    );
  }
}

delay({required cntx}) async {
  Future.delayed(const Duration(seconds: 3), () {
    Navigator.pushAndRemoveUntil(
        cntx,
        PageTransition(
          duration: const Duration(milliseconds: 1000),
          type: PageTransitionType.fade,
          child: ScreenChat(),
        ),
        (route) => false);
  });
}
