import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/constants/themecolors.dart';
import 'package:groceries/features/listing/view/mainview/listingmaincontroller.dart';

class ListingtMainView extends StatelessWidget {
  const ListingtMainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ListingMainController>(
        init: ListingMainController(),
        builder: (controller) {
          return DefaultTabController(
              length: controller.tabbars.length,
              child: Scaffold(
                body: SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TabBar(
                            indicatorColor: primaryColor,
                            indicatorSize: TabBarIndicatorSize.label,
                            tabs: controller.tabbars),
                        SizedBox(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height / 3,
                          child: TabBarView(
                            children: [
                            Image.asset(
                              "assets/images/vegetableicon.png",
                            ),
                            Image.asset("assets/images/meaticon.png"),
                            Image.asset("assets/images/fruitsicon.png"),
                            Image.asset("assets/images/breadicon.png"),
                          ]),
                        )
                      ],
                    ),
                  ),
                ),
              ));
        });
  }
}
