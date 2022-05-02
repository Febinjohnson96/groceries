import 'package:flutter/material.dart';
import 'package:groceries/constants/themecolors.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    Key? key,
    required this.buttonTitle,
    required this.callback,
  }) : super(key: key);
  final String buttonTitle;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          callback.call();
        },
        child: Text(
          buttonTitle,
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color: primaryColor),
        ));
  }
}
