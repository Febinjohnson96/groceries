import 'package:get/get.dart';
import 'package:groceries/features/home/homescreen.dart';
import 'package:groceries/features/login/loginscreen.dart';
import 'package:groceries/features/onboarding/onboardingscreen.dart';
import 'package:groceries/features/registration/registration_screen.dart';
import 'package:groceries/features/spalsh/splashscreen.dart';

List<GetPage> appRoutes() => [
      GetPage(
          name: '/',
          page: () => const SplashScreen(),
          transition: Transition.fadeIn),
      GetPage(
          name: '/onboard',
          page: () => const Onboarding(),
          transition: Transition.fadeIn),
      GetPage(
          name: '/home',
          page: () => const HomeScreen(),
          transition: Transition.fadeIn),
      GetPage(
          name: '/registration',
          page: () => const RegistrationScreen(),
          transition: Transition.fadeIn),
      GetPage(
        name: '/login',
        page: () => const LoginScreen(),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: '/home',
        page: () => const HomeScreen(),
        transition: Transition.fadeIn,
      )
    ];
