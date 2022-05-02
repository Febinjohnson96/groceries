import 'package:flutter/material.dart';

class AppFormField extends StatelessWidget {
  const AppFormField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.suffixIcon, this.callback,
  }) : super(key: key);

  final TextEditingController? controller;
  final String hintText;
  final IconData? suffixIcon;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(suffixIcon),
          ),
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyText1?.copyWith(
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
          border: const OutlineInputBorder()),
    );
  }
}
