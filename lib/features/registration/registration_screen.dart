import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/features/registration/registration_controller.dart';
import 'package:groceries/features/registration/view/registration_form_view.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegistrationController>(
        init: RegistrationController(),
        builder: (controller) {
          return Scaffold(
            body: SafeArea(
              child: Stack(
                children: [
                  Positioned(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        'assets/images/signup.jpg',
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
                        child: RegistrationFormView(
                          nameController: controller.nameController,
                          emailController: controller.emailController,
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
