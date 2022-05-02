import 'package:flutter/material.dart';
import 'package:groceries/widgets/appbutton.dart';
import 'package:groceries/widgets/formfield.dart';

class LoginFormView extends StatelessWidget {
  const LoginFormView(
      {Key? key,
      this.nameController,
      this.emailController,
      this.passWordController, this.callback})
      : super(key: key);

  final TextEditingController? nameController;
  final TextEditingController? emailController;
  final TextEditingController? passWordController;
  final VoidCallback? callback;

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
              hintText: "E-mail",
            ),
            const SizedBox(
              height: 20,
            ),
            AppFormField(
              controller: emailController,
              hintText: "Password",
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 45,
              width: double.infinity,
              child: AppButton(
                buttonTitle: "Log in",
                callback: () {
                  debugPrint('TEST Callback');
                  callback?.call();
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
