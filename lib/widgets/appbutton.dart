import 'package:flutter/material.dart';
import 'package:groceries/constants/themecolors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.buttonTitle,
    required this.callback,
  }) : super(key: key);

  final String buttonTitle;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback?.call();
      },
      child: Text(
        buttonTitle,
        style: Theme.of(context)
            .textTheme
            .headline4
            ?.copyWith(color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
          primary: primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
