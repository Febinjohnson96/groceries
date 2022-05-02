import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  final emailController = TextEditingController();
  final passWordController = TextEditingController();

  ontapLogin(){
    Get.toNamed('/home');
  }
}