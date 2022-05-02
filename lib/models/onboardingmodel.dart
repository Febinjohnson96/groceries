import 'package:groceries/constants/onboarding_constants.dart';

class Onboarding {
  Onboarding(
      {required this.title,
      required this.description,
      required this.imagePath});
  String title;
  String description;
  String imagePath;
}

List<Onboarding> onboardingData = [
  Onboarding(
      title: title,
      description: description,
      imagePath: "assets/images/onboarding.jpg"),
  Onboarding(
      title: secondTitle,
      description: secondDescription,
      imagePath: "assets/images/payment.jpg"),
  Onboarding(
      title: thirdTitle,
      description: thirdDescription,
      imagePath: "assets/images/delivery.jpg"),
];
