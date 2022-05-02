import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final pageViewController = PageController();

  final _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  onTappedStartButton() async {
    _isLoading(true);
    await Future.delayed(const Duration(seconds: 3));
    _isLoading(false);
    Get.toNamed('/registration');
  }

  onTappedLogin(){
    Get.toNamed('/login');
  }
}
