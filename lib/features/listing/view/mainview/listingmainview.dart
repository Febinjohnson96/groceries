import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/constants/themecolors.dart';
import 'package:groceries/features/listing/view/mainview/listingmaincontroller.dart';
import 'package:groceries/features/listing/view/vegetableview/vegetablelistscreen.dart';

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
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height / 2.5,
                          child: TabBarView(children: [
                            const VegetableListScreen(),
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
