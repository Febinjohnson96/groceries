// import 'package:flutter/material.dart';
// import 'package:bottom_navy_bar/bottom_navy_bar.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:groceries/constants/themecolors.dart';

// class AppBottomNavbar extends StatelessWidget {
//   const AppBottomNavbar({
//     Key? key,
//     required this.selectedIndex,
//     this.callback,
//     required this.navbarTitles,
//   }) : super(key: key);

//   final int selectedIndex;
//   final Function? callback;
//   final List<String> navbarTitles;

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavyBar(
//       selectedIndex: selectedIndex,
//       items: [
//         BottomNavyBarItem(
//           icon: const FaIcon(FontAwesomeIcons.house),
//           title: Text(navbarTitles[0]),
//           activeColor: primaryColor,
//         ),
//         BottomNavyBarItem(
//           icon: const FaIcon(FontAwesomeIcons.heart),
//           title: Text(navbarTitles[1]),
//           activeColor: primaryColor,
//         ),
//         BottomNavyBarItem(
//           icon: const FaIcon(FontAwesomeIcons.cartFlatbed),
//           title: Text(navbarTitles[2]),
//           activeColor: primaryColor,
//         ),
//         BottomNavyBarItem(
//           icon: const FaIcon(FontAwesomeIcons.user),
//           title: Text(navbarTitles[3]),
//           activeColor: primaryColor,
//         ),
//       ],
//     );
//   }
// }
