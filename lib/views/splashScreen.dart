import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sangeetham/routes/routes.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Get.toNamed(Routes.homeScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.black,
      body: Center(
        child: AnimatedTextKit(
          animatedTexts: [
        WavyAnimatedText(
          'Sangeetham',
          textStyle: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
            fontFamily: 'Roboto',
          ),
        ),
          ],
          isRepeatingAnimation: true,
          onTap: () {
        print("Tap Event");
          },
        ),
      ),
    );
  }
}
