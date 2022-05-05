import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/features/listing/view/fouthview/fourthlistcontroller.dart';
import 'package:groceries/features/listing/widget/productlistingcard.dart';

class FourthListScreen extends StatelessWidget {
  const FourthListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FourthListController>(
        init: FourthListController(),
        builder: (controller) {
          return Scaffold(
            body: SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: GridView.builder(
                  itemCount: controller.breadList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    childAspectRatio: 5 / 7,
                    mainAxisSpacing: 0,
                  ),
                  itemBuilder: (context, index) {
                    return ProductListingCardWiget(
                        imagePath:
                            controller.breadList[index].imagePath.toString(),
                        productName:
                            controller.breadList[index].name.toString(),
                        productPrice:
                            controller.breadList[index].price.toString());
                  }),
            ),
          );
        });
  }
}
