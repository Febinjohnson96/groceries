import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:groceries/constants/themecolors.dart';

class HomeController extends GetxController {
  final pageController = PageController();
  final _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;


  List<FlashyTabBarItem> get navbarData => [
        FlashyTabBarItem(
          icon: const Icon(FontAwesomeIcons.house),
          title: const Text("Home"),
          activeColor: primaryColor,
        ),
        FlashyTabBarItem(
          icon: const Icon(FontAwesomeIcons.heart),
          title: const Text("Favourite"),
          activeColor: primaryColor,
        ),
        FlashyTabBarItem(
          icon: const Icon(FontAwesomeIcons.cartFlatbed),
          title: const Text("Cart"),
          activeColor: primaryColor,
        ),
        FlashyTabBarItem(
          icon: const Icon(FontAwesomeIcons.user),
          title: const Text("Profile"),
          activeColor: primaryColor,
        ),
      ];

  ontapPageView(index) {
    debugPrint(index.toString());
    _selectedIndex(index);
    pageController.jumpToPage(selectedIndex);
  }
}
