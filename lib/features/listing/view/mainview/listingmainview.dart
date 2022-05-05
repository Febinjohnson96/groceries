import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/constants/themecolors.dart';
import 'package:groceries/features/listing/view/firstlistview/firstlistscreen.dart';
import 'package:groceries/features/listing/view/fouthview/fourtlistscreen.dart';
import 'package:groceries/features/listing/view/mainview/listingmaincontroller.dart';
import 'package:groceries/features/listing/view/secondlistview/secondlistscreen.dart';
import 'package:groceries/features/listing/view/thirdlistview/thirddlistscreen.dart';

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
                          child: const TabBarView(children: [
                            FirstListScreen(),
                            SecondListScreen(),
                            ThirdListScreen(),
                            FourthListScreen(),
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
