import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/constants/themecolors.dart';
import 'package:groceries/features/onboarding/onboarding_controller.dart';
import 'package:groceries/features/onboarding/views/onboarding_view.dart';
import 'package:groceries/models/onboardingmodel.dart';
import 'package:groceries/widgets/apptextbutton.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
        init: OnboardingController(),
        builder: (controller) {
          return Scaffold(
              body: SafeArea(
            child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 1.3,
                      child: PageView.builder(
                          controller: controller.pageViewController,
                          itemCount: onboardingData.length,
                          itemBuilder: (context, index) {
                            if (index == 0) {
                              return OnboardingFirstView(
                                  assetPath: onboardingData[0].imagePath,
                                  title: onboardingData[0].title,
                                  description: onboardingData[0].description);
                            } else if (index == 1) {
                              return OnboardingFirstView(
                                  assetPath: onboardingData[1].imagePath,
                                  title: onboardingData[1].title,
                                  description: onboardingData[1].description);
                            } else if (index == 2) {
                              return OnboardingFirstView(
                                  assetPath: onboardingData[2].imagePath,
                                  title: onboardingData[2].title,
                                  description: onboardingData[2].description);
                            }
                            return Container();
                          }),
                    ),
                    SmoothPageIndicator(
                      controller: controller.pageViewController,
                      count: onboardingData.length,
                      effect: const ExpandingDotsEffect(
                        dotHeight: 15,
                        dotWidth: 15,
                        activeDotColor: primaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: SizedBox(
                        height: 45,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => controller.onTappedStartButton(),
                          child: Obx(
                            () => controller.isLoading
                                ? const CircularProgressIndicator(
                                    color: Colors.white,
                                  )
                                : Text(
                                    'Get Started',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4
                                        ?.copyWith(color: Colors.white),
                                  ),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: primaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                    ),
                    AppTextButton(
                      buttonTitle: "Log in",
                      callback:()=> controller.onTappedLogin(),
                    )
                  ],
                )),
          ));
        });
  }
}
