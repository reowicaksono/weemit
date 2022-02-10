import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_screen_controller.dart';

class OnboardingScreenView extends GetView<OnboardingScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OnboardingScreenView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OnboardingScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
