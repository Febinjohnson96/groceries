import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/constants/themecolors.dart';
import 'package:groceries/features/spalsh/splashcontroller.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        init: SplashController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: primaryColor,
            body: Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 300,
                  width: 300,
                  child: Lottie.asset(
                      'assets/json/lottie/tracking-delivery.json',
                      fit: BoxFit.cover)),
            ),
          );
        });
  }
}
