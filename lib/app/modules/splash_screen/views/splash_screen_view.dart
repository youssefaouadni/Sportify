import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
import 'package:sportify/app/modules/profile/views/profile_view.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
            () => Get.off(ProfileView()));
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 300.0),
            child: Lottie.asset('assets/animation/90168-running.json'),
          ),
          const Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Text("Powered by enet'com",style: TextStyle(fontWeight: FontWeight.w800),),
            ),
          )
        ],
      ),
    );
  }
}
