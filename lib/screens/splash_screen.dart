import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:audio_player/utils/colors.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goToHomeScreen(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Connect Music',
                style: TextStyle(color: Colors.white),
              ),
              const Text(
                'with',
                style: TextStyle(color: Colors.white),
              ),
              TextLiquidFill(
                text: 'M4MUSIC',
                waveColor: Colors.white,
                boxBackgroundColor: MyColors.backgroundColor,
                textStyle: const TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
                boxHeight: 100.0,
                boxWidth: 250,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> goToHomeScreen(context) async {
    await Future.delayed(const Duration(seconds: 6));
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) {
        return const HomeScreen();
      },
    ));
  }
}
