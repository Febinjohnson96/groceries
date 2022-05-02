
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/features/home/homecontroller.dart';
import 'package:groceries/features/listing/listingscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Scaffold(
              body: SizedBox(
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: controller.pageController,
                  onPageChanged: (index) => controller.ontapPageView(index),
                  children: [
                    const ListingScreen(),
                    Container(
                      color: Colors.red,
                    ),
                    Container(
                      color: Colors.green,
                    ),
                    Container(
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              bottomNavigationBar: Obx(
                () => FlashyTabBar(
                  onItemSelected: (index) {
                    controller.ontapPageView(index);
                  },
                  selectedIndex: controller.selectedIndex,
                  items: controller.navbarData,
                ),
              ));
        });
  }
}
