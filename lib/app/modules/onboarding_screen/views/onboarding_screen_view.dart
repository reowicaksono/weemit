import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:weemit/app/data/utils/theme.dart';
import 'package:lottie/lottie.dart';

import '../controllers/onboarding_screen_controller.dart';

class OnboardingScreenView extends GetView<OnboardingScreenController> {
  final pages = [
    PageViewModel(
      title: "Chatting with your firends",
      body: "Lorem ipsum sit dolor amet",
      image: Container(
        height: Get.width * 0.8,
        width: Get.width * 0.8,
        child: Center(child: Lottie.asset("assets/lottie/send.json", fit: BoxFit.cover)),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
            color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.w700),
        bodyTextStyle: TextStyle(fontWeight: FontWeight.w300, fontSize: 18.0),
      ),
    ),
    PageViewModel(
      title: "Chatting with your firends",
      body: "You can search many weaboo in the world and chat with them",
      image: Container(
        height: Get.width * 0.4,
        width: Get.width * 0.4,
        child: Center(child: Lottie.asset("assets/lottie/anime.json")),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(color: Colors.orange),
        bodyTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
      ),
    ),
    PageViewModel(
      title: "Chatting with your firends",
      body: "You can search many weaboo in the world and chat with them",
      image: Container(
        height: Get.width * 0.4,
        width: Get.width * 0.4,
        child: Center(child: Lottie.asset("assets/lottie/video.json")),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(color: Colors.orange),
        bodyTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: 
            SafeArea(
              child: IntroductionScreen(
                
                pages: pages,
                onDone: () {
                  // When done button is press
                },
                globalBackgroundColor: Color.fromARGB(255, 214, 205, 216),
                dotsDecorator: DotsDecorator(
                    size: const Size.square(10.0),
                    activeSize: const Size(20.0, 10.0),
                    color: Colors.black26,
                    spacing: const EdgeInsets.symmetric(horizontal: 3.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0))),
                showSkipButton: true,
                skip: const Text("skip"),
                next: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(color: Colors.black, blurRadius: 10)],
                      color: Purple,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
                done: const Text("Done",
                    style: TextStyle(fontWeight: FontWeight.w600)),
              ),
            ),
      ),
    );
  }
}
