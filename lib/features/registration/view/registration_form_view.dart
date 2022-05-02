import 'package:flutter/material.dart';
import 'package:groceries/widgets/appbutton.dart';
import 'package:groceries/widgets/formfield.dart';

class RegistrationFormView extends StatelessWidget {
  const RegistrationFormView(
      {Key? key,
      this.nameController,
      this.emailController,
      this.passWordController})
      : super(key: key);

  final TextEditingController? nameController;
  final TextEditingController? emailController;
  final TextEditingController? passWordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Form(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(
              height: 20,
            ),
            AppFormField(
              controller: nameController,
              hintText: "Name",
            ),
            const SizedBox(
              height: 20,
            ),
            AppFormField(
              controller: emailController,
              hintText: "Email",
            ),
            const SizedBox(
              height: 20,
            ),
            AppFormField(
              controller: passWordController,
              hintText: "Password",
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 45,
              width: double.infinity,
              child: AppButton(
                buttonTitle: "Sign Up",
                callback: () {
                  debugPrint('TEST Callback');
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
