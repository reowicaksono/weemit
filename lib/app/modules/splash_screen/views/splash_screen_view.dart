import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:weemit/app/data/utils/theme.dart';
import 'package:weemit/app/modules/onboarding_screen/views/onboarding_screen_view.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
          duration: 3000,
          splash: CupertinoIcons.pencil,
          nextScreen: OnboardingScreenView(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Purple,
           curve: Curves.slowMiddle,
        )
    );
  }
}
