import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/features/login/logincontroller.dart';
import 'package:groceries/features/login/view/loginformview.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(),
        builder: (controller) {
          return Scaffold(
            body: SafeArea(
              child: Stack(
                children: [
                  Positioned(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        'assets/images/login.jpg',
                        fit: BoxFit.cover,
                        height: double.infinity,
                      ),
                    ),
                  ),
                  Positioned(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFE5E7E9),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                          ),
                        ),
                        height: MediaQuery.of(context).size.height / 2,
                        child: LoginFormView(
                          emailController: controller.emailController,
                          passWordController: controller.passWordController,
                          callback:()=> controller.ontapLogin(),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
