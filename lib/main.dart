import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/constants/routes.dart';
import 'package:groceries/constants/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ApplicationTheme.apptheme,
      themeMode: ThemeMode.light,
      getPages: appRoutes(),
    );
  }
}
