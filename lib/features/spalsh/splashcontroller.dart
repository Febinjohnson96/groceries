import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
     _routeTransition();
  }

  _routeTransition() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAllNamed('/onboard');
  }
}
